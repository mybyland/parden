package com.byland.bylfc.service;

import java.sql.SQLException;

import javax.sql.DataSource;

import com.byland.bylfc.dao.UsersDao;
import com.byland.bylfc.exception.InvalidNameException;
import com.byland.bylfc.exception.InvalidPassword2Exception;
import com.byland.bylfc.exception.InvalidPasswordException;
import com.byland.bylfc.exception.PersonNameUsedException;

public class UserService {
	
	private DataSource ds;

	public UserService(DataSource ds) {
		this.ds = ds;
	}
	
	public void register(String name, String password, String password2) throws InvalidNameException, InvalidPasswordException, InvalidPassword2Exception, SQLException, PersonNameUsedException {
		if (name == null || name.trim().length() < 4) {
			throw new InvalidNameException();
		}
		
		if (password == null || password.trim().length() < 6) {
			throw new InvalidPasswordException();
		}
		
		if ( password2 == null || !password.equals(password2) ) {
			throw new InvalidPassword2Exception();
		}
		
		//TODO 验证用户名是否存在
	
		
		if ( null != UsersDao.findByname(ds, name)) {
			throw new PersonNameUsedException();
		}
		
		
		UsersDao.register(ds,name, password);
		
		
	}

}
