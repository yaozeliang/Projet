package com.studentexchange.dao;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.hibernate.Hibernate;
import org.hibernate.SQLQuery;
import org.hibernate.transform.Transformers;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.studentexchange.core.entity.ext.GatherEntity;
import com.studentexchange.core.entity.ext.MonthEntity;
import com.studentexchange.util.Data;
import com.studentexchange.util.Pager;

@Repository("baseDAO")
public class BaseDAOImpl<T> {

	@PersistenceContext
	protected EntityManager em;

	public Query createQuery(String jpql) {
		return em.createQuery(jpql);
	}

	public void detach(Object entity) {
		em.detach(entity);
	}

	public void delete(T t) {
		em.remove(t);
	}

	public T find(Class<T> clazz, Serializable id) {
		return em.getReference(clazz, id);
	}

	@SuppressWarnings("unchecked")
	public List<T> find(String jpql, Object param) {
		return em.createQuery(jpql).setParameter(1, param).getResultList();
	}

	public int update(String jpql, Object[] params) {
		Query q = em.createQuery(jpql);

		if (params != null && params.length > 0) {
			int i = 1;
			for (Object o : params) {
				q.setParameter(i, o);
				i = i + 1;
			}
		}

		return q.executeUpdate();
	}
	
	public List<Data> stat(String jpql){
		Query query = em.createNativeQuery(jpql);
		query.unwrap(SQLQuery.class).addScalar("amount",Hibernate.INTEGER).addScalar("workdate",Hibernate.DATE).setResultTransformer(Transformers.aliasToBean(Data.class));//(new AliasToBeanResultTransformer(ReportBean.class));
		return query.getResultList();
	}
	

	@Transactional
	public void insertBatch(List<T> list) {
		for (int i = 0; i < list.size(); i++) {
			em.persist(list.get(i));
			if (i % 100 == 0) {
				em.flush();
				em.clear();
			}
		}
	}

	public List<T> qryPager(String hql, Pager pager) {
		Query q = em.createQuery(hql);
		pager.setTotalCount(q.getResultList() == null ? 0 : q.getResultList()
				.size());
		q.setFirstResult(pager.getCurrentPage() * pager.getEveryPage());
		q.setMaxResults(pager.getEveryPage());
		return q.getResultList();
	}

	@SuppressWarnings("unchecked")
	public List<T> find(String jpql, Object[] param) {
		Query query = em.createQuery(jpql);
		for (int i = 1; i <= param.length; i++) {
			query.setParameter(i, param[i - 1]);
		}
		return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	public List<T> find(String jpql) {
		return em.createQuery(jpql).getResultList();
	}

	@SuppressWarnings("unchecked")
	public int getTotalCount(String jpql) {
		return ((Long) em.createQuery(jpql).getSingleResult()).intValue();
	}
	
	public List<MonthEntity> qryMonthContent(Date startdate,Date enddate){
		Query query = em.createNativeQuery("select a.name name ,sum(b.quota) quota,sum(b.item+b.directitem) item from tb_item a,tb_content b where a.itemid = b.itemid and  b.accountdate>=? and a.state=1 and b.accountdate<? group by name ");
		
		query.setParameter(1, startdate);
		query.setParameter(2, enddate);
		
		query.unwrap(SQLQuery.class).addScalar("name",Hibernate.STRING).addScalar("quota",Hibernate.FLOAT).addScalar("item",Hibernate.FLOAT).setResultTransformer(Transformers.aliasToBean(MonthEntity.class));
		return query.getResultList();
	}
	
	
	public List<GatherEntity> qryGatherContent(Date startdate,Date enddate,String year){
		StringBuffer sb = new StringBuffer("select t.*,if(s.sum is null,0,s.sum) sum,(if(s.sum is null,0,s.sum)-t.amount) lf "
				+ " from ( select a.name ,a.itemid ,sum(b.quota) quota,sum(b.item+b.directitem) item,sum(b.amount) amount from tb_item a,tb_content b where a.itemid = b.itemid and  b.accountdate>=? and a.state=1 and b.accountdate<? group by name ) t "
				+ " left join tb_sumset s on s.itemid = t.itemid and s.state=1 and s.year=?");
		Query query = em.createNativeQuery(sb.toString());
		query.setParameter(1, startdate);
		query.setParameter(2, enddate);
		query.setParameter(3, year);
		query.unwrap(SQLQuery.class).addScalar("name",Hibernate.STRING).addScalar("itemid",Hibernate.LONG).addScalar("lf",Hibernate.FLOAT).addScalar("sum",Hibernate.FLOAT).addScalar("quota",Hibernate.FLOAT).addScalar("item",Hibernate.FLOAT).setResultTransformer(Transformers.aliasToBean(GatherEntity.class));
	    return query.getResultList();
	}

	public T persist(T t) {
		em.persist(t);
		return t;

	}

	public T save(T t) {
		return em.merge(t);
	}

	public void saveOrUpdate(T t) {
		em.merge(t);
	}

	public EntityManager getEntityManager() {
		return em;
	}

	@PersistenceContext
	public void setEntityManager(EntityManager entityManager) {
		this.em = entityManager;
	}
}