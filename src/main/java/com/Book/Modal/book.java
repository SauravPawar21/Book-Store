package com.Book.Modal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class book {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String title;
	private String author;
	private double price;
	private int quantity;
	@Column(name = "image_url")
	private String imageUrl;
	
	private String imageDesc;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getImageDesc() {
		return imageDesc;
	}

	public void setImageDesc(String imageDesc) {
		this.imageDesc = imageDesc;
	}

	public book(int id, String title, String author, double price, int quantity, String imageUrl, String imageDesc) {
		super();
		this.id = id;
		this.title = title;
		this.author = author;
		this.price = price;
		this.quantity = quantity;
		this.imageUrl = imageUrl;
		this.imageDesc = imageDesc;
	}

	public book() {
		
	}

	@Override
	public String toString() {
		return "book [id=" + id + ", title=" + title + ", author=" + author + ", price=" + price + ", quantity="
				+ quantity + ", imageUrl=" + imageUrl + ", imageDesc=" + imageDesc + "]";
	}
	
	
	
}
