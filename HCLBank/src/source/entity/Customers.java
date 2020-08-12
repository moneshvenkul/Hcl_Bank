package divya.entity;

public class Customers {

	private int cus_id;
	private String username;
	private String password;
	private String email;
	private int balance;
	
	
	public Customers(int cus_id, String username, String password, String email, int balance) {
		
		this.cus_id = cus_id;
		this.username = username;
		this.password = password;
		this.email = email;
		this.balance = balance;
	}

	public Customers(String username, String password, String email) {
		this.username = username;
		this.password = password;
		this.email = email;
	}
	
	public Customers(String username, String password) {
		
		this.username = username;
		this.password = password;
	}

	
	public Customers(int cus_id, int balance) {
		super();
		this.cus_id = cus_id;
		this.balance = balance;
	}

	public int getCus_id() {
		return cus_id;
	}
	public void setCus_id(int cus_id) {
		this.cus_id = cus_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

}
