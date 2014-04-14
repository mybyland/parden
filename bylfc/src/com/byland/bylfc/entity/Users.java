package com.byland.bylfc.entity;

public class Users {
	private int id;
	private String nickname;
	private String password;
	
	public Users() {
	}

	public Users(int id, String nickname) {
		super();
		this.id = id;
		this.nickname = nickname;
	}

	public Users(String nickname, String password) {
		super();
		this.nickname = nickname;
		this.password = password;
	}
	public Users(int id, String nickname, String password) {
		super();
		this.id = id;
		this.nickname = nickname;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
//	@Override
//	public String toString() {
//		return "Weibo [id=" + id + ", nickname=" + nickname + ", password="
//				+ password + "]";
//	}
	
	@Override
	public String toString() {
		return "Users [id=" + id + ", nickname=" + nickname + ", password="
				+ password + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result + ((nickname == null) ? 0 : nickname.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Users other = (Users) obj;
		if (id != other.id)
			return false;
		if (nickname == null) {
			if (other.nickname != null)
				return false;
		} else if (!nickname.equals(other.nickname))
			return false;
		return true;
	}

}
