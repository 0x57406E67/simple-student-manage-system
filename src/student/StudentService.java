package student;

import java.util.List;

import page.Page;
import student.Student;

public interface StudentService {

	List<Student> findAll();

	void addOrEdit(Student student);

	Student findById(int stuID);

	void delete(Student student);

	void add(Student student);

	void edit(Student student);

	Page<Student> findAllPage(int pageNum, int pageSize);
}
