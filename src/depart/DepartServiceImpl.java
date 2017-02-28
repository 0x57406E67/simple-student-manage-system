package depart;

import java.util.List;

import page.Page;
import depart.DepartDAO;
import depart.Depart;
import depart.DepartService;

public class DepartServiceImpl implements DepartService {
	private DepartDAO departDAO;

	public void setDepartDAO(DepartDAO departDAO) {
		this.departDAO = departDAO;
	}

	@Override
	public List<Depart> findAll() {
		return departDAO.findAll();
	}

	@Override
	public void addOrEdit(Depart depart) {
		departDAO.saveOrUpdate(depart);
	}

	@Override
	public Depart findById(int depID) {
		return departDAO.findById(depID);
	}

	@Override
	public void delete(Depart depart) {
		departDAO.delete(depart);
	}

	@Override
	public void edit(Depart depart) {
		departDAO.update(depart);
	}

	@Override
	public void add(Depart depart) {
		departDAO.save(depart);
	}

	@Override
	public Page<Depart> findAllPage(int pageNum, int pageSize) {
		int totalRecord = departDAO.getTotalRecord();
		Page<Depart> page = new Page<Depart>(pageNum, pageSize, totalRecord);
		page.setData(departDAO.findAllWithPage(page.getStartIndex(), pageSize));
		return page;
	}
}
