package com.cos.busanWeb.service;

import com.cos.busanWeb.domain.user.User;
import com.cos.busanWeb.domain.user.UserDao;
import com.cos.busanWeb.domain.user.dto.JoinReqDto;
import com.cos.busanWeb.domain.user.dto.LoginReqDto;

public class UserService {
	private UserDao userDao;
	
	public UserService() {
		userDao = new UserDao();
	}
	
	public int 회원가입(JoinReqDto dto) {
		int result = userDao.save(dto);
		return result;
	}
	
	public int 유저네임중복체크(String username) {
		int result = userDao.findByUsername(username);
		return result;
	}
	
	public User 로그인(LoginReqDto dto) {	
		return userDao.findByUsernameAndPassword(dto);
	}

	public User 유저정보(int userId) {
		// TODO Auto-generated method stub
		return userDao.findById(userId);
	}
}
