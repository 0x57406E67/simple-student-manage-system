package depart;

import java.util.List;

import page.Page;
import base.BaseAction;
import depart.Depart;

public class DepartAction extends BaseAction<Depart> {

	private static final long serialVersionUID = 7924647888160001110L;

	public String findAll() {
		List<Depart> allDepart = this.getDepartService().findAll();
		this.set("allDepart", allDepart);
		return "findAll";
	}

	public String preAdd() {
		if (this.getModel().getDepID() != null) {
			Depart findDepart = this.getDepartService().findById(
					this.getModel().getDepID());
			this.push(findDepart);
		}
		return "preAdd";
	}

	public String preEdit() {
		if (this.getModel().getDepID() != null) {
			Depart findDepart = this.getDepartService().findById(
					this.getModel().getDepID());
			this.push(findDepart);
		}
		return "preEdit";
	}

	public String edit() {
		this.getDepartService().edit(this.getModel());
		return "edit";
	}

	public String add() {
		this.getDepartService().add(this.getModel());
		return "add";
	}

	public String del() {
		if (this.getModel().getDepID() != null) {
			Depart findDepart = this.getDepartService().findById(
					this.getModel().getDepID());
			this.push(findDepart);
			this.getDepartService().delete(findDepart);
		}

		return "del";
	}

	public String findAllPage() {
		Page<Depart> page = this.getDepartService().findAllPage(
				this.getPageNum(), this.getPageSize());
		this.set("page", page);
		return "findAllPage";
	}
}
