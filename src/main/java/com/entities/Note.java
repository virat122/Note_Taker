package com.entities;

import java.util.Date;


import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table
public class Note {
	
	@Id
	private int id;
	private String tittle;
	@Column(length = 800)
	private String content;
	private Date addedDate;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTittle() {
		return tittle;
	}
	public void setTittle(String tittle) {
		this.tittle = tittle;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String contentString) {
		this.content = contentString;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	public Note( String tittle, String contentString, Date addedDate) {
		super();
		this.id = new Random().nextInt(100000);
		this.tittle = tittle;
		this.content = contentString;
		this.addedDate = addedDate;
	}
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Note [id=" + id + ", tittle=" + tittle + ", contentString=" + content + ", addedDate=" + addedDate
				+ "]";
	}
	

}
