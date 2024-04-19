package com.Book.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Book.Modal.book;
import java.util.List;


@Repository
public interface bookinfo extends JpaRepository<book, Integer>{
	public book findById(int id);
}
