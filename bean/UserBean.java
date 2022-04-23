package bean;

public class UserBean {
	private String fname;
	private String number;
	private String email;
	private String address;
	private String password;
	private String uid;
	
	
	public UserBean() {
		super();
		// TODO Auto-generated constructor stub
	}


	public UserBean(String fname, String number, String email, String address,
			String password, String uid) {
		super();
		this.fname = fname;
		this.number = number;
		this.email = email;
		this.address = address;
		this.password = password;
		this.uid = uid;
	}


	public String getFname() {
		return fname;
	}


	public void setFname(String fname) {
		this.fname = fname;
	}


	public String getNumber() {
		return number;
	}


	public void setNumber(String number) {
		this.number = number;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getUid() {
		return uid;
	}


	public void setUid(String uid) {
		this.uid = uid;
	}


	@Override
	public String toString() {
		return "UserBean [fname=" + fname + ", number=" + number + ", email="
				+ email + ", address=" + address + ", password=" + password
				+ ", uid=" + uid + "]";
	}
	

}
