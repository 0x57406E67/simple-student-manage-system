package user;

import base.BaseDAO;
import user.User;

public interface UserDAO extends BaseDAO<User>{
	
	public User find(String username,String password);
}
