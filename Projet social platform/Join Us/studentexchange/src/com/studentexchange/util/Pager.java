package com.studentexchange.util;

import org.apache.commons.lang3.StringUtils;

public class Pager {
	// 当前数
	private int currentPage = 0;
	// 每页显示数量
	private int everyPage = 30;
	// 总页数
	private int totalPage;
	// 总数数
	private int totalCount;
	// 排序字段
	private String sidx;
	// 排序规则
	private String sord;

	public Pager() {
		//this.currentPage = 0;
		//this.everyPage = 10;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	// 设置总数量的同时，设置�?页数
	public void setCount(int totalCount) {
		this.totalCount = totalCount;
		int temp = 0;
		if (totalCount % this.everyPage != 0) {
			temp++;
		}
		this.totalPage = totalCount / this.everyPage + temp;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public int getEveryPage() {
		return everyPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public String getSidx() {
		return sidx;
	}

	public void setSidx(String sidx) {
		if(StringUtils.isNotBlank(sidx)){
			sidx = sidx.toLowerCase();
		}
		this.sidx = sidx;
	}

	public String getSord() {
		return sord;
	}

	public void setSord(String sord) {
		if(StringUtils.isNotBlank(sord)){
			sord = sord.toLowerCase();
		}
		this.sord = sord;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public void setEveryPage(int everyPage) {
		this.everyPage = everyPage;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

}
