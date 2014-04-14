package com.byland.bylfc.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.byland.bylfc.entity.Info;
import com.byland.bylfc.entity.Pinkman;

public class PinkmanDao {

	public PinkmanDao() {
	}

	public static void chaxunAll(DataSource ds, String people, int price,
			int shuliang, String address, String phonenb, String miaoshu,String pname)
			throws SQLException {

		// List<Pinkman> pinkmanlist=new ArrayList<>();
		Connection connection = ds.getConnection();
		String sql = "insert into pinkman(pname，price,shuliang,address,people,phonenb,miaoshu，datep) values(?,?,?,?,?,?,?,sysdate)";
		PreparedStatement statement = connection.prepareStatement(sql);

		statement.setString(1, pname);
		statement.setInt(2, price);
		// statement.setInt(3, pinkman_id);
		statement.setInt(3, shuliang);
		statement.setString(4, address);
		statement.setString(5, people);
		statement.setString(6, phonenb);
		statement.setString(7, miaoshu);
		// statement.setDate(8, date);

		// ResultSet rs=statement.executeQuery();
		statement.execute();
		statement.close();
		connection.close();

	}

	public static List<Pinkman> chaxnAll(DataSource ds) throws SQLException {

		List<Pinkman> list = new ArrayList<>();
		Connection connection = ds.getConnection();
		//String sql = "select price,pinkman_id,shuliang,address,people,phonenb,miaoshu,to_char(datep,'yyyy/MM/dd') from pinkman order by datep desc";
		String sql = "select pname,price,pinkman_id,shuliang,address,people,phonenb,miaoshu,to_char(datep,'yyyy/MM/dd') from pinkman order by datep desc";
		PreparedStatement statement = connection.prepareStatement(sql);

		// statement.setInt(1, price);
		// statement.setInt(2, shuliang);
		// statement.setString(3, address);
		// statement.setString(4, people);
		// statement.setString(5, phonenb);
		// statement.setString(6, miaoshu);

		ResultSet rs = statement.executeQuery();
		while (rs.next()) {
			String pname = rs.getString(1);
			int price = rs.getInt(2);
			int shuliang = rs.getInt(4);
			String address = rs.getString(5);
			String people = rs.getString(6);
			String phonenb = rs.getString(7);
			String miaoshu = rs.getString(8);
			String datep = rs.getString(9);
			
			System.out.println(datep);

			Pinkman pinkman = new Pinkman(pname,price, shuliang,address, people, phonenb,
					miaoshu, datep);
			list.add(pinkman);

		}
		rs.close();
		statement.close();
		connection.close();

		return list;

	}

}
