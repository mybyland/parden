package com.byland.bylfc.entity;

import java.util.Date;

public class Comments {
	
	
	private int id;
	private String com_content;
	private String com_author;
	private Date com_time;
	
	public Comments(int id,String com_content, String com_author) {
		super();
		this.id=id;
		this.com_content = com_content;
		this.com_author = com_author;
		com_time=new Date();
	}
	public Comments(int id, String com_content, String com_author, Date com_time) {
		super();
		this.id = id;
		this.com_content = com_content;
		this.com_author = com_author;
		this.com_time = com_time;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCom_content() {
		return com_content;
	}
	public void setCom_content(String com_content) {
		this.com_content = com_content;
	}
	public String getCom_author() {
		return com_author;
	}
	public void setCom_author(String com_author) {
		this.com_author = com_author;
	}
	public Date getCom_time() {
		return com_time;
	}
	public void setCom_time(Date com_time) {
		this.com_time = com_time;
	}
	@Override
	public String toString() {
		return "Comments [id=" + id + ", com_content=" + com_content
				+ ", com_author=" + com_author + ", com_time=" + com_time + "]";
	}
	
	

}
