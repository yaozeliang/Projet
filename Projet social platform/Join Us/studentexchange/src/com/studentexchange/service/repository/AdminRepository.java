package com.studentexchange.service.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.studentexchange.core.entity.TbAdmin;
import com.studentexchange.core.entity.TbUser;
import com.studentexchange.repository.service.GenericRepository;

public interface AdminRepository extends GenericRepository<TbAdmin, Long>{
	
	
	@Query("select u from TbAdmin u where u.username = :username") 
	public List<TbAdmin> findByAccount(@Param("username") String username);
}
