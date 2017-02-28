package depart;

import java.util.List;

import page.Page;
import depart.Depart;

public interface DepartService {

	List<Depart> findAll();

	void addOrEdit(Depart depart);

	Depart findById(int depID);

	void delete(Depart depart);

	void edit(Depart depart);

	void add(Depart depart);

	Page<Depart> findAllPage(int pageNum, int pageSize);
}
