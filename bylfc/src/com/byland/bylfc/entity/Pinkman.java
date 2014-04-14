package com.byland.bylfc.entity;

public class Pinkman {
	private int id;
	private int price;
	private int shuliang;
	private String people;
	private String address;
	private String phonenb;
	private String miaoshu;
	private String datep;
	private String pname;

	public Pinkman() {
		// TODO Auto-generated constructor stub
	}

	
	
	
	public Pinkman( String pname,int price, int shuliang, String people, String address,
			String phonenb, String miaoshu, String datep) {
		super();
		this.price = price;
		this.shuliang = shuliang;
		this.people = people;
		this.address = address;
		this.phonenb = phonenb;
		this.miaoshu = miaoshu;
		this.datep = datep;
		this.pname = pname;
	}




	public Pinkman(int price, int shuliang, String people, String address,
			String phonenb, String miaoshu, String datep) {
		super();
		this.price = price;
		this.shuliang = shuliang;
		this.people = people;
		this.address = address;
		this.phonenb = phonenb;
		this.miaoshu = miaoshu;
		this.datep = datep;
	}



	public Pinkman(int price, int shuliang, String people, String phonenb,
			String miaoshu, String datep) {
		super();
		this.price = price;
		this.shuliang = shuliang;
		this.people = people;
		this.phonenb = phonenb;
		this.miaoshu = miaoshu;
		this.datep = datep;
	}

	public Pinkman(int id, int price, int shuliang, String people,
			String phonenb, String miaoshu) {
		super();
		this.id = id;
		this.price = price;
		this.shuliang = shuliang;
		this.people = people;
		this.phonenb = phonenb;
		this.miaoshu = miaoshu;
	}

	public Pinkman(int id, int price, int shuliang, String people,
			String phonenb, String miaoshu, String datep) {
		super();
		this.id = id;
		this.price = price;
		this.shuliang = shuliang;
		this.people = people;
		this.phonenb = phonenb;
		this.miaoshu = miaoshu;
		this.datep = datep;
	}

	
	
	public Pinkman(int id, int price, int shuliang, String people,
			String address, String phonenb, String miaoshu, String datep) {
		super();
		this.id = id;
		this.price = price;
		this.shuliang = shuliang;
		this.people = people;
		this.address = address;
		this.phonenb = phonenb;
		this.miaoshu = miaoshu;
		this.datep = datep;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getShuliang() {
		return shuliang;
	}

	public void setShuliang(int shuliang) {
		this.shuliang = shuliang;
	}

	public String getPeople() {
		return people;
	}

	public void setPeople(String people) {
		this.people = people;
	}

	public String getPhonenb() {
		return phonenb;
	}

	public void setPhonenb(String phonenb) {
		this.phonenb = phonenb;
	}

	public String getMiaoshu() {
		return miaoshu;
	}

	public void setMiaoshu(String miaoshu) {
		this.miaoshu = miaoshu;
	}
	public String getDatep() {
		return datep;
	}

	public void setDatep(String datep) {
		this.datep = datep;
	}
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}




	@Override
	public String toString() {
		return "Pinkman [id=" + id + ", price=" + price + ", shuliang="
				+ shuliang + ", people=" + people + ", address=" + address
				+ ", phonenb=" + phonenb + ", miaoshu=" + miaoshu + ", datep="
				+ datep + ", pname=" + pname + "]";
	}




	
	

}
