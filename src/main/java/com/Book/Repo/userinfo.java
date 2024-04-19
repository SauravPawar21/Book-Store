package com.Book.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Book.Modal.user;

@Repository
public interface userinfo extends JpaRepository<user, Integer>{
	public user findByEmail(String email);;

}
