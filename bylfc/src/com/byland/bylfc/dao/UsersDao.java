package com.byland.bylfc.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.sql.DataSource;

import com.byland.bylfc.entity.Info;
import com.byland.bylfc.entity.Message;
import com.byland.bylfc.entity.Some;
import com.byland.bylfc.entity.Users;

public class UsersDao {

	

	public UsersDao() {
		// TODO Auto-generated constructor stub
	}
	//登录验证
	public  static Map<String, Users> findAll(DataSource ds) throws SQLException{
		Map<String,Users> users=new HashMap<String, Users>();
		String sql="select id,nickname,password from users";
		Connection connection=ds.getConnection();
		PreparedStatement statement=connection.prepareStatement(sql);
		ResultSet rs=statement.executeQuery();
		while(rs.next()){
			int id=rs.getInt(1);
			String nickname=rs.getString(2);
			String password=rs.getString(3);
			Users user=new Users(id, nickname, password);
			users.put(nickname, user);
		}
		rs.close();
		statement.close();
		connection.close();
		return users;
	}
	//用户注册
	public static void register(DataSource ds,String nickname,String password) throws SQLException{
		Connection connection=ds.getConnection();
		String sql="call add_users(?,?)";
		CallableStatement statement=connection.prepareCall(sql);
		statement.setString(1,nickname);
		statement.setString(2,password);
		statement.execute();
		
		statement.close();
		connection.close();
	}
	//通过id查找用户
	public static Users findById(DataSource ds,int id) throws SQLException{
		Users users=null;
		//a
		Connection connection=ds.getConnection();
		String sql="select id,nickname from users where id=?";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setInt(1,id);
		ResultSet rs=statement.executeQuery();
		while(rs.next()){
			int idvalue=rs.getInt(1);
			String nickname=rs.getString(2);
			users=new Users(idvalue, nickname);
		}
		rs.close();
		statement.close();
		connection.close();
		return users;
	}
	//通过nickname查找用户
	public static Users findByname(DataSource ds,String nickname) throws SQLException{
		Users users=null;
		
		//a
		Connection connection=ds.getConnection();
		String sql="select id,nickname from users where nickname=?";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setString(1,nickname);
		ResultSet rs=statement.executeQuery();
		while(rs.next()){
			int idvalue=rs.getInt(1);
			String name=rs.getString(2);
			users=new Users(idvalue,name);
		}
		rs.close();
		statement.close();
		connection.close();
		return users;
	}
	
	public static Some showusers(DataSource ds,int id) throws SQLException{
		Connection connection=ds.getConnection();
		String sql="call show_users(?,?,?,?)";
		CallableStatement statement=connection.prepareCall(sql);
		//in
		statement.setInt(1,id);
		//out
		statement.registerOutParameter(2,Types.NUMERIC);
		statement.registerOutParameter(3,Types.NUMERIC);
		statement.registerOutParameter(4,Types.NUMERIC);
		statement.execute();
		int followingcount=statement.getInt(2);
		int followercount=statement.getInt(3);
		int messagecount=statement.getInt(4);
		Some some=new Some(followingcount, followercount, messagecount);
		statement.close();
		connection.close();
		return some;
	}

	public static int followingNum(DataSource ds,int id) throws SQLException{
		Connection connection=ds.getConnection();
		String sql="select count(*) from following where users_id=?";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setInt(1,id);
		ResultSet rs=statement.executeQuery();
		rs.next();
		int number=rs.getInt(1);
		rs.close();
		statement.close();
		connection.close();
		return number;
	}
	
	public static int followerNum(DataSource ds,int id) throws SQLException{
		Connection connection=ds.getConnection();
		String sql="select count(*) from follower where users_id=?";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setInt(1,id);
		ResultSet rs=statement.executeQuery();
		rs.next();
		int number=rs.getInt(1);
		rs.close();
		statement.close();
		connection.close();
		return number;
	}
	
	public static int messageNum(DataSource ds,int id) throws SQLException{
		Connection connection=ds.getConnection();
		String sql="select count(*) from message where users_id=?";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setInt(1,id);
		ResultSet rs=statement.executeQuery();
		rs.next();
		int number=rs.getInt(1);
		rs.close();
		statement.close();
		connection.close();
		return number;
	}

	public static Info singleinfo(DataSource ds,int id) throws SQLException{
		Info info=null;
		Connection connection=ds.getConnection();
		String sql="select sex,address from info where users_id=?";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setInt(1,id);
		ResultSet rs=statement.executeQuery();
		while(rs.next()){
			String sex=rs.getString(1);
			String address=rs.getString(2);
			info=new Info(sex, address);
		}
		rs.close();
		statement.close();
		connection.close();
		return info;
	}

	public static void saveinfo(DataSource ds,int id,String sex,String address) throws SQLException{
		Connection connection=ds.getConnection();
		String sql="insert into info(users_id,sex,address) values (?,?,?)";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setInt(1,id);
		statement.setString(2,sex);
		statement.setString(3,address);
		statement.execute();
		statement.close();
		connection.close();
	}
	
	public static void updateinfo(DataSource ds,int id,String sex,String address) throws SQLException{
		Connection connection=ds.getConnection();
		String sql="update info set sex=?,address=? where users_id=?";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setString(1,sex);
		statement.setString(2,address);
		statement.setInt(3,id);
		statement.execute();
		statement.close();
		connection.close();
	}
	
	public static List<Users> followingList(DataSource ds,int id) throws SQLException{
		List<Users> followinglist=new ArrayList<>();
		Connection connection=ds.getConnection();
		String sql="select following_id from following where users_id=?";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setInt(1,id);
		ResultSet rs=statement.executeQuery();
		while(rs.next()){
			int following_id=rs.getInt(1);
			Users users=findById(ds, following_id);
			followinglist.add(users);
		}
		rs.close();
		statement.close();
		connection.close();
		return followinglist;
	}
	
	public static List<Users> followerList(DataSource ds,int id) throws SQLException{
		List<Users> followerlist=new ArrayList<>();
		Connection connection=ds.getConnection();
		String sql="select follower_id from follower where users_id=?";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setInt(1,id);
		ResultSet rs=statement.executeQuery();
		while(rs.next()){
			int follower_id=rs.getInt(1);
			Users users=findById(ds, follower_id);
			followerlist.add(users);
		}
		rs.close();
		statement.close();
		connection.close();
		return followerlist;
	}
	//获得消息列表
	public static List<Message> messageList(DataSource ds,int id) throws SQLException{
		List<Message> messagelist=new ArrayList<>();
		Connection connection=ds.getConnection();
		String sql="select id,users_id,content,time from message where users_id=?";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setInt(1,id);
		ResultSet rs=statement.executeQuery();
		while(rs.next()){
			
		}
		rs.close();
		statement.close();
		connection.close();
		return messagelist;
	}
	//除自己外的所有用户
	public static List<Users> usersList(DataSource ds,int id) throws SQLException{
		List<Users>  userslist=new ArrayList<>();
		Connection connection=ds.getConnection();
		String sql="select id,nickname from users where id!=?";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setInt(1,id);
		ResultSet rs=statement.executeQuery();
		while(rs.next()){
			int users_id=rs.getInt(1);
			String nickname=rs.getString(2);
			Users users=new Users(users_id, nickname);
			userslist.add(users);
		}
		rs.close();
		statement.close();
		connection.close();
		return userslist;
	}
	//系统推荐好友
	public static Set<Users> recommendfriends(DataSource ds,int id) throws SQLException{
		Set<Users> friendslist=new HashSet<>();
		List<Users> otheruserslist=usersList(ds, id);
		Connection connection=ds.getConnection();
		String sql="select following_id from following where users_id=?";
		PreparedStatement statement=connection.prepareStatement(sql);
		statement.setInt(1,id);
		ResultSet rs=statement.executeQuery();
		while(rs.next()){
			int following_id=rs.getInt(1);
			for(Users users:otheruserslist){
				if(users.getId()!=following_id){
					Users friends=new Users(users.getId(),users.getNickname());
					friendslist.add(friends);
				}else{
					break;
				}
			}
		}
		rs.close();
		statement.close();
		connection.close();
		return friendslist;
	}
	
	
}
