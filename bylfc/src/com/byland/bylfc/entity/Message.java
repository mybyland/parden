package com.byland.bylfc.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Message {
	private int id;
	private String content;
	private String author;
	private Date time;
	public Message(String content, String author) {
		super();
		this.content = content;
		this.author = author;
		time=new Date();
	}
	public Message(int id,String content, String author, Date time) {
		super();
		this.id=id;
		this.content = content;
		this.author = author;
		this.time = time;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getAuthor() {
		return author;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String toString() {
		return "Message [id=" + id + ",content=" + content + ", time=" + new SimpleDateFormat("yyyy年mm月dd日hh:mm:ss").format(time) + ", author="
				+ author + "]";
	}
}


