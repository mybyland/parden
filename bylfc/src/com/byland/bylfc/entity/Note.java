package com.byland.bylfc.entity;
import java.text.SimpleDateFormat;
import java.util.Date;



public class Note {
	
	
		private String author;
		private String content;
		private Date time;

		public Note() {
		}

		public Note(String author, String content) {
			super();
			this.author = author;
			this.content = content;

			time = new Date();
		}

		public String getAuthor() {
			return author;
		}

		public void setAuthor(String author) {
			this.author = author;
		}

		public String getContent() {
			return content;
		}

		public void setContent(String content) {
			this.content = content;
		}

		public String getTime() {
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			return dateFormat.format(time);
		}

		public void setTime(Date time) {
			this.time = time;
		}



}
