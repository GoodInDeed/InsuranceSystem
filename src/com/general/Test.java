package com.general;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Types;

public class Test {
	public static void main(String[] args) throws SQLException {
		RegisterAgent ra = new RegisterAgent();
		ra.setName("Gezi");
		ra.setPassword("123456");
		ra.setCardNum("123455");
		ra.setBank("boa");
		ra.setAge(14);
		ra.setGender("Male");
		ra.setAddress("Iowa");
		ra.setEmail("gmail");
		GeneralDao.saveAgent(ra);
	}
}
