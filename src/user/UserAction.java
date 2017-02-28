package user;

import com.opensymphony.xwork2.ActionContext;

import base.BaseAction;
import user.User;

public class UserAction extends BaseAction<User> {

	private static final long serialVersionUID = 7139981171427687504L;

	public String login() {
		User loginUser = this.getUserService().login(this.getModel());
		if (loginUser != null) {
			this.sessionPut("loginUser", loginUser);
			return "success";
		} else {
			return "login";
		}
	}

	public String logout() {
		ActionContext.getContext().getSession().remove("loginUser");
		return "logout";
	}

}
