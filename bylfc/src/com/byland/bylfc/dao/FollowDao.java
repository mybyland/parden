package com.byland.bylfc.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

public class FollowDao {
	
	
		public static void addfollowing(DataSource ds,int id,int following_id) throws SQLException{
			Connection connection=ds.getConnection();
			String sql="call add_following(?,?)";
			CallableStatement statement=connection.prepareCall(sql);
			statement.setInt(1,id);
			statement.setInt(2,following_id);
			statement.execute();
			statement.close();
			connection.close();
		}
	
		public static void delfollowing(DataSource ds,int id,int following_id) throws SQLException{
			Connection connection=ds.getConnection();
			String sql="call del_following(?,?)";
			CallableStatement statement=connection.prepareCall(sql);
			statement.setInt(1,id);
			statement.setInt(2,following_id);
			statement.execute();
			statement.close();
			connection.close();
		}
		
		public static void delfollower(DataSource ds,int id,int follower_id) throws SQLException{
			Connection connection=ds.getConnection();
			String sql="call del_follower(?,?)";
			CallableStatement statement=connection.prepareCall(sql);
			statement.setInt(1,id);
			statement.setInt(2,follower_id);
			statement.execute();
			statement.close();
			connection.close();
		}

}
