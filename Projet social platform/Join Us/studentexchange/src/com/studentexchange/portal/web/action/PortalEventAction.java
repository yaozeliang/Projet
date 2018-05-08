package com.studentexchange.portal.web.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.Action;
import com.studentexchange.constant.GlobalConst;
import com.studentexchange.constant.InfoConst;
import com.studentexchange.core.entity.TbEvent;
import com.studentexchange.core.entity.TbEventanswer;
import com.studentexchange.core.entity.TbUser;
import com.studentexchange.repository.hql.Criteria;
import com.studentexchange.repository.hql.Restrictions;
import com.studentexchange.service.repository.EventRepository;
import com.studentexchange.service.repository.EventanswerRepository;
import com.studentexchange.util.DateUtil;
import com.studentexchange.web.base.action.BaseAction;


@SuppressWarnings("all")
@Component("portalEventAction")
@Scope("prototype")
public class PortalEventAction  extends BaseAction {
	
	private List<TbEvent> events  = new ArrayList<TbEvent>();
	private TbEvent myevent;
	private String enrollenddate;
	private String holdenddate;
	private String holdstartdate; 
	
	private File imgpath;// 上传的文件
	private String imgpathFileName;// 文件的名称 如上传的文件是a.png
									// 则fileuploadFileName值为"a.png"
	private String imgpathContentType;// 文件的类型
										// 如上传的是png格式的图片，则fileuploadContentType值为"image/png"
	private String savePath = "/event/images";
	private long baseid;
	
	
	@Autowired
	private EventRepository eventRepository;
	
	@Autowired
	private EventanswerRepository eventanswerRepository;
	
	private List<TbEventanswer>eventanswers = new ArrayList<TbEventanswer>();
	
	public String execute(){
		
		Criteria<TbEvent> c = new Criteria<TbEvent>();
		c.add(Restrictions.desc("createdate", null, true));
		c.add(Restrictions.eq("state", "1", true));
		events = this.eventRepository.findAll(c);
		
		
		
		return Action.INPUT;
	}
	
	public String create() {
		return "create";
	}
	
	public String commit()throws Exception{
		
		
		
		if(myevent==null){
			return "create";
		}
		
		TbUser temp = (TbUser)this.sessionMap.get(GlobalConst.PORTAL_SESSION_ADMIN);
		if(temp==null){
			msg=InfoConst.INFO_12;
			return "create"; 
		}
		 
		if(this.imgpathFileName!=null){
			int pos = this.imgpathFileName.lastIndexOf(".");
			String fn = this.imgpathFileName.substring(pos);
			SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
			String newImgName = df.format(new Date()) + "_"+ new Random().nextInt(1000) + fn;
			if ("bmp".equalsIgnoreCase(fn) || ".png".equalsIgnoreCase(fn)|| ".gif".equalsIgnoreCase(fn)|| ".jpeg".equalsIgnoreCase(fn)|| ".jpg".equalsIgnoreCase(fn)) {

			} else {
				this.msg = InfoConst.INFO_13;
				return "create";
			}
			this.uploadFile(newImgName);
			myevent.setImgpath(this.savePath + "/" + newImgName);
		}
		
		
		if(StringUtils.isNotEmpty(enrollenddate)){
			myevent.setEnrollenddate(DateUtil.transferStringToDate(enrollenddate, "yyyy-MM-dd HH:mm"));
		}
		
		if(StringUtils.isNotEmpty(holdenddate)){
			myevent.setHoldstartdate(DateUtil.transferStringToDate(holdenddate, "yyyy-MM-dd HH:mm"));
		}
		
		if(StringUtils.isNotEmpty(holdstartdate)){
			myevent.setHoldenddate(DateUtil.transferStringToDate(holdstartdate, "yyyy-MM-dd HH:mm"));
		}
		
		
		myevent.setUnenrollnum(myevent.getNum());
		myevent.setEnrollnum(0);
		myevent.setState("1");
		this.msg = InfoConst.INFO_29;
		this.eventRepository.saveAndFlush(myevent);
		return "create";
	}
	
	
	public void uploadFile(String newImgName) throws Exception {
		String absolutePath = ServletActionContext.getServletContext()
				.getRealPath(""); // 获取项目根路径
		// 文件路径
		String path = absolutePath + "/" + this.savePath + "/";

		File file = new File(path);
		if (!file.exists()) {
			file.mkdirs();
		}

		path = path + newImgName;

		FileInputStream fis = new FileInputStream(this.imgpath);
		FileOutputStream fos = new FileOutputStream(path);
		try {
			byte[] buf = new byte[1024];
			int len = 0;
			while ((len = fis.read(buf)) > 0) {
				fos.write(buf, 0, len);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			fis.close();
			fos.close();
		}
	}

	public String show(){
		this.myevent = this.eventRepository.findOne(this.baseid);
		Criteria<TbEventanswer> c = new Criteria<TbEventanswer>();
		c.add(Restrictions.eq("tbEvent.baseid", this.baseid, true));
		eventanswers = this.eventanswerRepository.findAll(c);
		return "show";
	}
	

	public TbEvent getMyevent() {
		return myevent;
	}

	public void setMyevent(TbEvent myevent) {
		this.myevent = myevent;
	}

	public String getEnrollenddate() {
		return enrollenddate;
	}

	public void setEnrollenddate(String enrollenddate) {
		this.enrollenddate = enrollenddate;
	}

	public String getHoldenddate() {
		return holdenddate;
	}

	public void setHoldenddate(String holdenddate) {
		this.holdenddate = holdenddate;
	}

	public String getHoldstartdate() {
		return holdstartdate;
	}

	public void setHoldstartdate(String holdstartdate) {
		this.holdstartdate = holdstartdate;
	}

	public File getImgpath() {
		return imgpath;
	}

	public void setImgpath(File imgpath) {
		this.imgpath = imgpath;
	}

	public String getImgpathFileName() {
		return imgpathFileName;
	}

	public void setImgpathFileName(String imgpathFileName) {
		this.imgpathFileName = imgpathFileName;
	}

	public String getImgpathContentType() {
		return imgpathContentType;
	}

	public void setImgpathContentType(String imgpathContentType) {
		this.imgpathContentType = imgpathContentType;
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public EventRepository getEventRepository() {
		return eventRepository;
	}

	public void setEventRepository(EventRepository eventRepository) {
		this.eventRepository = eventRepository;
	}

	public long getBaseid() {
		return baseid;
	}

	public void setBaseid(long baseid) {
		this.baseid = baseid;
	}

	public List<TbEventanswer> getEventanswers() {
		return eventanswers;
	}

	public void setEventanswers(List<TbEventanswer> eventanswers) {
		this.eventanswers = eventanswers;
	}

	public List<TbEvent> getEvents() {
		return events;
	}

	public void setEvents(List<TbEvent> events) {
		this.events = events;
	}

}
