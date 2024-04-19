package com.Book.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Book.Modal.cart;
import java.util.List;


@Repository
public interface cartinfo extends JpaRepository<cart, Integer> {
	
	public cart  findById(int id);
}
