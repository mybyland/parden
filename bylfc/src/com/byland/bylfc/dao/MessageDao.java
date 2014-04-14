package com.byland.bylfc.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import com.byland.bylfc.entity.Message;

public class MessageDao {	//发布消息
	public static void sendmessage(DataSource ds,int id,String content) throws SQLException{
		Connection connection=ds.getConnection();
		String sql="call send_message(?,?,sysdate)";
		CallableStatement statement=connection.prepareCall(sql);
		statement.setInt(1,id);
		statement.setString(2,content);
		statement.execute();
		statement.close();
		connection.close();
	}
	//根据id获得author(nickname)
	public static String getauthor(DataSource ds,int id) throws SQLException{
		String nickname=null;
		Connection connection=ds.getConnection();
		String sql="select nickname from users where id=?";	
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setInt(1,id);
		ResultSet rs=statement.executeQuery();
		while(rs.next()){
			nickname=rs.getString(1);
		}
		rs.close();
		statement.close();
		connection.close();
		return nickname;
	}
	
	public static Message getMessageById(DataSource ds,int id) throws SQLException{
		Message message=null;
		Connection connection=ds.getConnection();
		String sql="select id,users_id,content,time from message where id=?";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setInt(1,id);
		ResultSet rs=statement.executeQuery();
		while(rs.next()){
			int idvalue=rs.getInt(1);
			int userid=rs.getInt(2);
			String content=rs.getString(3);
			Date time=rs.getDate(4);
			message=new Message(idvalue,content,getauthor(ds,userid),time);
		}
		rs.close();
		statement.close();
		connection.close();
		return message;
	}

	public static List<Message> showsinglemessage(DataSource ds,int users_id) throws SQLException{
		List<Message> messagelist=new ArrayList<>();
		Connection connection=ds.getConnection();
		String sql="select id,users_id,content,time from message where users_id=? order by time desc";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setInt(1,users_id);
		ResultSet rs=statement.executeQuery();
		while(rs.next()){
			int id=rs.getInt(1);
			int userid=rs.getInt(2);
			String content=rs.getString(3);
			Date time=rs.getDate(4);
			Message message=new Message(id,content,getauthor(ds,userid),time);
			messagelist.add(message);
		}
		rs.close();
		statement.close();
		connection.close();
		return messagelist;
	}
	//删除消息
	public static void delmessage(DataSource ds,int id) throws SQLException{
		Connection connection=ds.getConnection();
		String sql="delete from message where id=?";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setInt(1,id);
		statement.execute();
		statement.close();
		connection.close();
	}
	
	public static void clickLove(DataSource ds,int message_id) throws SQLException{
		Connection connection=ds.getConnection();
		String sql="insert into love(message_id) values(?)";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setInt(1,message_id);
		statement.execute();
		statement.close();
		connection.close();
	}
	
	public static int loveNum(DataSource ds,int message_id) throws SQLException{
		int lovenum=0;
		Connection connection=ds.getConnection();
		String sql="select count(*) from love where message_id=?";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setInt(1,message_id);
		ResultSet rs=statement.executeQuery();
		rs.next();
		lovenum=rs.getInt(1);
		rs.close();
		statement.close();
		connection.close();
		return lovenum;
	}
	
	public static List<Message> showAllmessage(DataSource ds,int id) throws SQLException{
		List<Message> messagelist=new ArrayList<>();
		Connection connection=ds.getConnection();
		String sql="select distinct m.id,m.users_id,m.content,m.time from message m,following f where m.users_id=f.following_id or m.users_id=? order by time desc";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setInt(1,id);
		ResultSet rs=statement.executeQuery();
		while(rs.next()){
			int idvalue=rs.getInt(1);
			int userid=rs.getInt(2);
			String content=rs.getString(3);
			Date time=rs.getDate(4);
			Message message=new Message(idvalue,content,getauthor(ds,userid),time);
			messagelist.add(message);
		}
		rs.close();
		statement.close();
		connection.close();
		return messagelist;
	}

	
	
	
	
}
