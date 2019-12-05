package com.cos.crud.util;

import java.security.MessageDigest;

public class SHA256 {
	public static String getEncrypt(String rawPassword, String salt) {
		String result = "";
		
		byte[] b = (rawPassword+salt).getBytes();
		
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.update(b); // b를 암호화
			byte[] bResult = md.digest();
//			for (byte by : bResult) {
//				System.out.print(by+ " ");
//			}
			StringBuffer sb = new StringBuffer();
			for (byte item : bResult) {
				sb.append(Integer.toString(item & 0xff, 16));
			}
			result = sb.toString();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
		
		
	}
}
