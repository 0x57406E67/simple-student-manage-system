package base;

import java.lang.reflect.ParameterizedType;

import depart.DepartService;
import user.UserService;
import major.MajorService;
import clazz.ClazzService;
import student.StudentService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class BaseAction<T> extends ActionSupport implements ModelDriven<T> {

	private Class<T> beanClass;

	@SuppressWarnings("unchecked")
	public BaseAction() {
		try {
			ParameterizedType parameterizedType = (ParameterizedType) this
					.getClass().getGenericSuperclass();
			beanClass = (Class<T>) parameterizedType.getActualTypeArguments()[0];
			t = beanClass.newInstance();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	private T t;

	@Override
	public T getModel() {
		return t;
	}

	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	private DepartService departService;

	public DepartService getDepartService() {
		return departService;
	}

	public void setDepartService(DepartService departService) {
		this.departService = departService;
	}

	private MajorService majorService;

	public MajorService getMajorService() {
		return majorService;
	}

	public void setMajorService(MajorService majorService) {
		this.majorService = majorService;
	}

	private ClazzService clazzService;

	public ClazzService getClazzService() {
		return clazzService;
	}

	public void setClazzService(ClazzService clazzService) {
		this.clazzService = clazzService;
	}

	private StudentService studentService;

	public StudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}

	private int pageNum = 1;

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageNum() {
		return pageNum;
	}

	private int pageSize = 8;

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void put(String key, Object value) {
		ActionContext.getContext().put(key, value);
	}

	public void sessionPut(String key, Object value) {
		ActionContext.getContext().getSession().put(key, value);
	}

	public void applicationPut(String key, Object value) {
		ActionContext.getContext().getApplication().put(key, value);
	}

	public void set(String key, Object value) {
		ActionContext.getContext().getValueStack().set(key, value);
	}

	public void push(Object o) {
		ActionContext.getContext().getValueStack().push(o);
	}

	public Object get(String o) {
		return ActionContext.getContext().get(o);
	}

	public Object sessionGet(String o) {
		return ActionContext.getContext().getSession().get(o);
	}

	public Object applicationGet(String o) {
		return ActionContext.getContext().getApplication().get(o);
	}

}