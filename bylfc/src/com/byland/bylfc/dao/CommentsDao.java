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

import com.byland.bylfc.entity.Comments;

public class CommentsDao {

	//发表评论
		public static void sendcomments(DataSource ds,int message_id,int id,String com_content) throws SQLException{
			Connection connection=ds.getConnection();
			String sql="call send_comments(?,?,?,sysdate)";
			CallableStatement statement=connection.prepareCall(sql);
			statement.setInt(1,message_id);
			statement.setInt(2,id);
			statement.setString(3,com_content);
			statement.execute();
			statement.close();
			connection.close();
		}
		//根据users_id然后得到author(nickname)
		public static String getauthor(DataSource ds,int id) throws SQLException{
			String nickname=null;
			Connection connection=ds.getConnection();
			String sql="select nickname from users where id=?";
			PreparedStatement statement=connection.prepareStatement(sql);
			statement.setInt(1,id);
			ResultSet rs=statement.executeQuery();
			while(rs.next()){
				nickname=rs.getString(1);
				return nickname;
			}
			rs.close();
			statement.close();
			connection.close();
			return nickname;
		}
		//获得某一用户某一消息的评论列表
		public static List<Comments> showcomments(DataSource ds,int message_id) throws SQLException{
			List<Comments> commentslist=new ArrayList<>(); 
			Connection connection=ds.getConnection();
			String sql="select id,users_id,com_content,com_time from comments where message_id=? order by com_time";
			PreparedStatement statement=connection.prepareStatement(sql);
			statement.setInt(1,message_id);
			ResultSet rs=statement.executeQuery();
			while(rs.next()){
				int idvalue=rs.getInt(1);
				int userid=rs.getInt(2);
				String com_content=rs.getString(3);
				Date com_time=rs.getDate(4);
				Comments comments=new Comments(idvalue,com_content,getauthor(ds,userid),com_time);
				commentslist.add(comments);
			}
			rs.close();
			statement.close();
			connection.close();
			return commentslist;
		}
		//删除评论
		public static void delcomments(DataSource ds,int id) throws SQLException{
			Connection connection=ds.getConnection();
			String sql="delete from comments where id=?";
			PreparedStatement statement=connection.prepareStatement(sql);
			statement.setInt(1,id);
			statement.execute();
			statement.close();
			connection.close();
		}
		//某一条消息的评论数
		public static int commentsNum(DataSource ds,int message_id) throws SQLException{
			Connection connection=ds.getConnection();
			String sql="select count(*) from comments where message_id=?";
			PreparedStatement statement=connection.prepareStatement(sql);
			statement.setInt(1,message_id);
			ResultSet rs=statement.executeQuery();
			rs.next();
			int commentsnum=rs.getInt(1);
			rs.close();
			statement.close();
			connection.close();
			return commentsnum;
		}
	
	
}
