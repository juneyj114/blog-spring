package com.cos.crud.model;

import java.sql.Timestamp;

class MyUser {
	private int id;
	private String username;
	private String password;
	private String email;
	private Timestamp createDate;
	
	private OAuth token;
}

interface OAuth {
	
}

class NaverAuth implements OAuth{
	private String email;
	private String accessToken;
	private String refreshToken;
	
}

class FaceBook implements OAuth{
	private String email;
	private String accessToken;
	private String refreshToken;
	
}

public class Test {

}
