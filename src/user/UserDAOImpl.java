package user;

import java.util.List;

import base.BaseDAOImpl;
import user.UserDAO;
import user.User;

public class UserDAOImpl extends BaseDAOImpl<User> implements UserDAO {
	@Override
	@SuppressWarnings("unchecked")
	public User find(String username, String password) {
		List<User> allUser = this.getHibernateTemplate().find(
				"from User where username = ? and password = ?", username,
				password);
		if (allUser != null && allUser.size() > 0) {
			return allUser.get(0);
		}
		return null;
	}

}
