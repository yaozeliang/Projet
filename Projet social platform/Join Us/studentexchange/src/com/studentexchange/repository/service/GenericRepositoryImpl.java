package com.studentexchange.repository.service;

import java.io.Serializable;

import javax.persistence.EntityManager;

import org.springframework.data.jpa.repository.support.JpaEntityInformation;
import org.springframework.data.jpa.repository.support.JpaEntityInformationSupport;
import org.springframework.data.jpa.repository.support.SimpleJpaRepository;
import org.springframework.data.repository.NoRepositoryBean;

@NoRepositoryBean
// 必须�?
public class GenericRepositoryImpl<T, ID extends Serializable> extends
		SimpleJpaRepository<T, ID> implements GenericRepository<T, ID> {
	
	
	
	
	private final EntityManager em;

	/**
	 * 构�?函数
	 * 
	 * @param domainClass
	 * @param em
	 */
	public GenericRepositoryImpl(
			final JpaEntityInformation<T, ?> entityInformation,
			EntityManager entityManager) {

		super(entityInformation, entityManager);
		this.em = entityManager;
	}

	/**
	 * 构�?函数
	 * 
	 * @param domainClass
	 * @param em
	 */
	public GenericRepositoryImpl(Class<T> domainClass, EntityManager em) {
		this(JpaEntityInformationSupport.getMetadata(domainClass, em), em);
	}

}
