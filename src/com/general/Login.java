package com.general;

import com.general.GeneralDao;

public class Login {
	private String category, name, password;

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String execute()
    {
    	int i=GeneralDao.check(this);
    	if(i==1)
    	{
    		if(this.category == "Admin") {
    			return "Admin";
    		}
    		return this.category;
    	}
    	return "error";
    }
}
