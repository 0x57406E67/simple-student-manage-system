package web;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class LoginInterceptor extends MethodFilterInterceptor {

	private static final long serialVersionUID = 840961718151554567L;

	@Override
	public String doIntercept(ActionInvocation invocation) throws Exception {
		
		Object loginUser = ActionContext.getContext().getSession().get("loginUser");
		
		if(loginUser == null){
			return "nonLogin";
		}
		/*
		 * invocation.invoke()
		 * 表示退出当前拦截器，继续执行下一个拦截器或者Action
		 * 相当于放行通过
		 */
		return invocation.invoke();
	}

}