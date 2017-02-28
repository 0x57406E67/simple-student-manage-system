package student;

import java.util.List;

import page.Page;
import clazz.Clazz;
import base.BaseAction;
import student.Student;

public class StudentAction extends BaseAction<Student> {

	private static final long serialVersionUID = 7924647888160001110L;

	public String findAll() {
		List<Student> allStudent = this.getStudentService().findAll();
		this.set("allStudent", allStudent);
		return "findAll";
	}

	public String preAdd() {
		if (this.getModel().getStuID() != null) {
			Student findStudent = this.getStudentService().findById(
					this.getModel().getStuID());
			this.push(findStudent);
		}
		List<Clazz> allClazz = this.getClazzService().findAll();
		this.put("allClazz", allClazz);
		return "preAdd";
	}

	public String preEdit() {
		if (this.getModel().getStuID() != null) {
			Student findStudent = this.getStudentService().findById(
					this.getModel().getStuID());
			this.push(findStudent);
		}
		List<Clazz> allClazz = this.getClazzService().findAll();
		this.put("allClazz", allClazz);
		return "preEdit";
	}

	public String add() {
		this.getStudentService().add(this.getModel());
		return "add";
	}

	public String edit() {
		this.getStudentService().edit(this.getModel());
		return "edit";
	}

	public String del() {
		if (this.getModel().getStuID() != null) {
			Student findStudent = this.getStudentService().findById(
					this.getModel().getStuID());
			this.push(findStudent);
			this.getStudentService().delete(findStudent);
		}

		return "del";
	}

	public String findAllPage() {
		Page<Student> page = this.getStudentService().findAllPage(
				this.getPageNum(), this.getPageSize());
		this.set("page", page);
		return "findAllPage";
	}
}
