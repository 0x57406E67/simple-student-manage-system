package clazz;

import java.util.List;

import page.Page;
import major.Major;
import base.BaseAction;
import clazz.Clazz;

public class ClazzAction extends BaseAction<Clazz> {

	private static final long serialVersionUID = 7924647888160001110L;

	public String findAll() {
		List<Clazz> allClazz = this.getClazzService().findAll();
		this.set("allClazz", allClazz);
		return "findAll";
	}

	public String preAdd() {
		if (this.getModel().getClzID() != null) {
			Clazz findClazz = this.getClazzService().findById(
					this.getModel().getClzID());
			this.push(findClazz);
		}
		List<Major> allMajor = this.getMajorService().findAll();
		this.put("allMajor", allMajor);
		return "preAdd";
	}

	public String preEdit() {
		if (this.getModel().getClzID() != null) {
			Clazz findClazz = this.getClazzService().findById(
					this.getModel().getClzID());
			this.push(findClazz);
		}
		List<Major> allMajor = this.getMajorService().findAll();
		this.put("allMajor", allMajor);
		return "preEdit";
	}

	public String add() {
		this.getClazzService().add(this.getModel());
		return "add";
	}

	public String edit() {
		this.getClazzService().edit(this.getModel());
		return "edit";
	}

	public String del() {
		if (this.getModel().getClzID() != null) {
			Clazz findClazz = this.getClazzService().findById(
					this.getModel().getClzID());
			this.push(findClazz);
			this.getClazzService().delete(findClazz);
		}

		return "del";
	}

	public String findAllPage() {
		Page<Clazz> page = this.getClazzService().findAllPage(
				this.getPageNum(), this.getPageSize());
		this.set("page", page);
		return "findAllPage";
	}
}
