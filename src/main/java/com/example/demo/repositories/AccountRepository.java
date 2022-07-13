package com.example.demo.repositories;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.demo.entities.Account;

public interface AccountRepository extends JpaRepository<Account, Integer> {
	/*
	 * T là entity id kiểu dữ liệu khóa chính
	 */ 
	@Query("Select acc from Account acc WHERE email LiKE %:username%")

	public Account findRmailFPTByUserName(@Param("username") String username);

	/*
	 * @Query(name = "Account.findByEmail") public Account
	 * timTheoEmail(@Param("email") String email);
	 */

	public List<Account> findByFullnameLike(String fullname);
	@Query("SELECT acc FROM Account acc WHERE acc.email = :email")
	public Account findByEmail(@Param("email") String email);
		
	
}
