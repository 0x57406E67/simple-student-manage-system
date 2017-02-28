package user;

import user.UserDAO;
import user.User;
import user.UserService;

public class UserServiceImpl implements UserService {
	private UserDAO userDAO;

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public User login(User user) {
		return userDAO.find(user.getUsername(), user.getPassword());
	}

}
