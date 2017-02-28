package clazz;

import java.util.List;

import page.Page;
import clazz.Clazz;

public interface ClazzService {

	List<Clazz> findAll();

	void addOrEdit(Clazz clazz);

	Clazz findById(int clzID);

	void delete(Clazz clazz);

	void add(Clazz clazz);

	void edit(Clazz clazz);

	Page<Clazz> findAllPage(int pageNum, int pageSize);
}
