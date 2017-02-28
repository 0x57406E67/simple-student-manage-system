package major;

import java.util.List;

import major.Major;
import base.BaseDAOImpl;
import major.MajorDAO;

public class MajorDAOImpl extends BaseDAOImpl<Major> implements MajorDAO{
	@SuppressWarnings("unchecked")
	@Override
	public List<Major> findAll(int depID) {
		return this.getHibernateTemplate().find("from Major m where m.depart.depID = ?" , depID);
	}
}
