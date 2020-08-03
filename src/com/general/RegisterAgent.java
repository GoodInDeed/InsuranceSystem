package com.general;

import com.general.GeneralDao;

public class RegisterAgent {
//	<!-- Name, password, Ac no, bank, age, gender, address, e-mail id. -->
	private String name, password, cardNum, bank, gender, address, email;
	private int age;
	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

    public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCardNum() {
		return cardNum;
	}

	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String execute()
    {
		System.out.println(name);
		System.out.println(password);
		System.out.println(cardNum);
		System.out.println(bank);
		System.out.println(gender);
		System.out.println(address);
		System.out.println(email);
		System.out.println(age);
    	int i=GeneralDao.saveAgent(this);
    	if(i>0)
    	{
    	return "success";
    	}
    	return "error";
    }
}
