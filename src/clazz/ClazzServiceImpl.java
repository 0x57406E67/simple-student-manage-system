package clazz;

import java.util.List;

import page.Page;
import clazz.ClazzDAO;
import clazz.Clazz;
import clazz.ClazzService;

public class ClazzServiceImpl implements ClazzService {
	private ClazzDAO clazzDAO;

	public void setClazzDAO(ClazzDAO clazzDAO) {
		this.clazzDAO = clazzDAO;
	}

	@Override
	public List<Clazz> findAll() {
		return clazzDAO.findAll();
	}

	@Override
	public void addOrEdit(Clazz clazz) {
		clazzDAO.saveOrUpdate(clazz);
	}

	@Override
	public Clazz findById(int clzID) {
		return clazzDAO.findById(clzID);
	}

	@Override
	public void delete(Clazz clazz) {
		clazzDAO.delete(clazz);
	}

	@Override
	public void add(Clazz clazz) {
		clazzDAO.save(clazz);
	}

	@Override
	public void edit(Clazz clazz) {
		clazzDAO.update(clazz);
	}

	@Override
	public Page<Clazz> findAllPage(int pageNum, int pageSize) {
		int totalRecord = clazzDAO.getTotalRecord();
		Page<Clazz> page = new Page<Clazz>(pageNum, pageSize, totalRecord);
		page.setData(clazzDAO.findAllWithPage(page.getStartIndex(), pageSize));
		return page;
	}
}
