package major;

import java.util.List;

import major.Major;
import base.BaseDAO;

public interface MajorDAO extends BaseDAO<Major>{
	
	List<Major> findAll(int depID);
}
