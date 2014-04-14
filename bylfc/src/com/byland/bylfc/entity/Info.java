package com.byland.bylfc.entity;

public class Info {
	private String sex;
	private String address;
	public Info() {
	}
	public Info(String sex, String address) {
		super();
		this.sex = sex;
		this.address = address;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Info [sex=" + sex + ", address=" + address + "]";
	}

}
