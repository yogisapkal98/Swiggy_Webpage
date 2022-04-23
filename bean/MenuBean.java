package bean;

public class MenuBean {
	
	private String mname;
	private String mdetails;
	private int mprice;
	private int quantity;
	
	public MenuBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MenuBean(String mname, String mdetails, int mprice, int quantity) {
		super();
		this.mname = mname;
		this.mdetails = mdetails;
		this.mprice = mprice;
		this.quantity = quantity;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMdetails() {
		return mdetails;
	}

	public void setMdetails(String mdetails) {
		this.mdetails = mdetails;
	}

	public int getMprice() {
		return mprice;
	}

	public void setMprice(int mprice) {
		this.mprice = mprice;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "MenuBean [mname=" + mname + ", mdetails=" + mdetails
				+ ", mprice=" + mprice + ", quantity=" + quantity + "]";
	}
	

}