package major;

import java.util.List;

import page.Page;
import base.BaseAction;
import depart.Depart;
import major.Major;

public class MajorAction extends BaseAction<Major> {

	private static final long serialVersionUID = 7574267863219152829L;

	public String findAll() {
		List<Major> allMajor = this.getMajorService().findAll();
		this.set("allMajor", allMajor);
		return "findAll";
	}

	public String preAdd() {
		if (this.getModel().getMajID() != null) {
			Major findMajor = this.getMajorService().findById(
					this.getModel().getMajID());
			this.push(findMajor);
		}
		List<Depart> allDepart = this.getDepartService().findAll();
		this.put("allDepart", allDepart);
		return "preAdd";
	}

	public String add() {
		this.getMajorService().add(this.getModel());
		return "add";
	}

	public String preEdit() {
		if (this.getModel().getMajID() != null) {
			Major findMajor = this.getMajorService().findById(
					this.getModel().getMajID());
			this.push(findMajor);
		}
		List<Depart> allDepart = this.getDepartService().findAll();
		this.put("allDepart", allDepart);
		return "preEdit";
	}

	public String edit() {
		this.getMajorService().edit(this.getModel());
		return "edit";
	}

	public String del() {
		if (this.getModel().getMajID() != null) {
			Major findMajor = this.getMajorService().findById(
					this.getModel().getMajID());
			this.push(findMajor);
			this.getMajorService().delete(findMajor);
		}
		return "del";
	}

	public String findAllPage() {
		Page<Major> page = this.getMajorService().findAllPage(
				this.getPageNum(), this.getPageSize());
		this.set("page", page);
		return "findAllPage";
	}
}
