package user;

public class User implements java.io.Serializable {

	private static final long serialVersionUID = 3081992389756731094L;
	private Integer uid;
	private String username;
	private String password;
	private String uname;

	/** default constructor */
	public User() {
	}

	/** full constructor */
	public User(String username, String password, String uname) {
		this.username = username;
		this.password = password;
		this.uname = uname;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
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

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

}
