package major;

import java.util.List;

import page.Page;
import major.Major;

public interface MajorService {

	List<Major> findAll(int depID);

	List<Major> findAll();

	Major findById(int majID);

	void addOrEdit(Major major);

	void delete(Major major);

	void edit(Major major);

	void add(Major major);

	Page<Major> findAllPage(int pageNum, int pageSize);
}
