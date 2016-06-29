package com.niit.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="CATEGORY")
public class Category {
	@Id
	@Column(name="CATEGORY_ID")
	private String categoryId;
	@Column(name="CATEGORY_NAME")
	private String categoryName;
	@Column(name="CATEGORY_DESCRIPTION")
	private String categoryDescription;
	public String getCategoryDescription() {
		return categoryDescription;
	}
	public void setCategoryDescription(String categoryDescription) {
		this.categoryDescription = categoryDescription;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

}
