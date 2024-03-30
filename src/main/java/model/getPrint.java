package model;

import java.util.Random;

public class getPrint {
	private String id;
	private String name;
	private String email;
	private String password;
	
	public String getId() {
		if(id == null || id.equals("")) {
			Random ran = new Random();
			int ranID = 100000000 + ran.nextInt(900000000);
			id = String.valueOf(ranID);
		}
		return id;
	}
	public void setId(String ID) {
		this.id = ID;
	}
	public String getName() {
		return name;
	}
	public void setName(String Name) {
		this.name = Name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
