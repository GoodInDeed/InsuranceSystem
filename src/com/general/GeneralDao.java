package com.general;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Types;

import com.general.Login;
import com.general.RegisterAgent;


public class GeneralDao {
	
//	create table agent(agentID int NOT NULL AUTO_INCREMENT,name varchar(30),password varchar(20),cardNum varchar(20),bank varchar(20),age int, gender varchar(10),address varchar(30),email varchar(30),PRIMARY KEY(agentID));
	public static int saveAgent(RegisterAgent r){
		int x=0;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","qwrh3h");
			PreparedStatement ps=con.prepareStatement("insert into agent(agentID, name, password, cardNum, bank, age, gender, address, email) values(?,?,?,?,?,?,?,?,?)");
//			private String name, password, cardNum, bank, gender, address, email;
//			private int age;
			ps.setNull(1, Types.INTEGER);
			ps.setString(2, r.getName());
			ps.setString(3, r.getPassword());
			ps.setString(4, r.getCardNum());
			ps.setString(5, r.getBank());
			ps.setInt(6, r.getAge());
			ps.setString(7, r.getGender());
			ps.setString(8, r.getAddress());
			ps.setString(9, r.getEmail());
			x=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return x;
	}
	
	public static int savePH(RegisterPH r)
	{
		int x=0;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","qwrh3h");
			PreparedStatement ps=con.prepareStatement("insert into policyholder values(?,?,?,?,?,?,?,?,?)");
//			Name, password, Ac no, bank, Occupation, age, sex, address, e-mail id
			ps.setString(1, r.getName());
			ps.setString(2, r.getPassword());
			ps.setString(3, r.getCardNum());
			ps.setString(4, r.getBank());
			ps.setString(5, r.getPolicy());
			ps.setInt(6, r.getAge());
			ps.setString(7, r.getGender());
			ps.setString(8, r.getAddress());
			ps.setString(9, r.getEmail());
			x=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return x;
	}
	
	public static int check(Login l){
		int x=0;
		try
		{
			ResultSet rs;
			Class.forName("com.mysql.cj.jdbc.Driver");
			//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","qwrh3h");
			final String strSQL = "select * from ? where name=? and password=?";
			Object[] params = new String[3];
			params[0] = l.getCategory();
			params[1] = l.getName();
			params[2] = l.getPassword();
			rs = execQuery(strSQL, params);
			ResultSetMetaData md = rs.getMetaData();
			int columnCount = md.getColumnCount();
			while(rs.next()) {
				x++;
				for (int i = 1; i <= columnCount; i++) {
					System.out.println(md.getColumnName(i) + ":" + rs.getObject(i));
				}
			}
			return x;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return x;
	}
	
	public static ResultSet execQuery(final String strSQL,final Object[] params) throws SQLException{
		ResultSet rs;
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","qwrh3h");
		System.out.println("SQL:>"+strSQL);
		try{
			PreparedStatement pstmt=conn.prepareStatement(strSQL);
			for(int i=0;i<params.length;i++){
				pstmt.setString(i+1, (String) params[i]);
				System.out.print(i+1);
				System.out.print(":" + params[i]);
			}
			System.out.println(strSQL);
			rs=pstmt.executeQuery();
			return rs;
		} catch(SQLException e){
			e.printStackTrace();
			return null;
		}
	}
}
