package DataInfoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.biddingsystem.utill.DBConnect;

public class LoginData {
	
	public boolean admin(String username,String password){
		boolean isexists = false;
		String sql = "select * from admin where Adminusername = ? and Adminpassword =?";
		
		try {
			Connection connection = DBConnect.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			if(resultSet.next()) {
				isexists = true;
			}
		} catch (SQLException e) {
			// TODO: handle exception
		}
		

		return isexists;
	}
	
	
	public boolean user(String email,String password){
		boolean isexists = false;
		String sql = "select * from bidder where email = ? and password =?";
		
		try {
			Connection connection = DBConnect.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			if(resultSet.next()) {
				isexists = true;
			}
		} catch (SQLException e) {
			// TODO: handle exception
		}
		
		return isexists;
	}
	
	public boolean isSeller(String email,String password){
		boolean isexists = false;
		String sql = "select * from sellers where semail = ? and spassword =?";
		
		try {
			Connection connection = DBConnect.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			if(resultSet.next()) {
				isexists = true;
			}
		} catch (SQLException e) {
			// TODO: handle exception
		}
		

		return isexists;
	}

}
