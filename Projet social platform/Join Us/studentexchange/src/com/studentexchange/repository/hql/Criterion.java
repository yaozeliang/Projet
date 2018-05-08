package com.studentexchange.repository.hql;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import javax.persistence.criteria.Order;



/** 
 * 条件接口 
 * 用户提供条件表达式接口
 * @Class Name Criterion 
 * @Author lee 
 * @Create In 2012-2-8 
 */  
public interface Criterion {  
    public enum Operator {  
        EQ, NE, LIKE, GT, LT, GTE, LTE, AND, OR,ASC,DESC,EQ_R, NE_R, LIKE_R, GT_R, LT_R, GTE_R, LTE_R, AND_R, OR_R,NULL,NOT_NULL
    }  
    public Predicate toPredicate(Root<?> root, CriteriaQuery<?> query,  
            CriteriaBuilder builder); 
    
    public Order toOrder(Root<?> root, CriteriaQuery<?> query,  
            CriteriaBuilder builder);  
} 
