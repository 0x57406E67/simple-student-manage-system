package major;

import java.util.List;

import page.Page;
import major.MajorDAO;
import major.Major;
import major.MajorService;

;

public class MajorServiceImpl implements MajorService {
	private MajorDAO majorDAO;

	public void setMajorDAO(MajorDAO majorDAO) {
		this.majorDAO = majorDAO;
	}

	@Override
	public List<Major> findAll(int depID) {
		return majorDAO.findAll(depID);
	}

	@Override
	public List<Major> findAll() {
		return majorDAO.findAll();
	}

	@Override
	public Major findById(int majID) {
		return majorDAO.findById(majID);
	}

	@Override
	public void addOrEdit(Major major) {
		majorDAO.saveOrUpdate(major);
	}

	@Override
	public void delete(Major major) {
		majorDAO.delete(major);
	}

	@Override
	public void edit(Major major) {
		majorDAO.update(major);
	}

	@Override
	public void add(Major major) {
		majorDAO.save(major);
	}

	@Override
	public Page<Major> findAllPage(int pageNum, int pageSize) {
		int totalRecord = majorDAO.getTotalRecord();
		Page<Major> page = new Page<Major>(pageNum, pageSize, totalRecord);
		page.setData(majorDAO.findAllWithPage(page.getStartIndex(), pageSize));
		return page;
	}
}
