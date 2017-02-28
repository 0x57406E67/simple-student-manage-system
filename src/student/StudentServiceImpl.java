package student;

import java.util.List;

import page.Page;
import student.StudentDAO;
import student.Student;
import student.StudentService;

public class StudentServiceImpl implements StudentService {
	private StudentDAO studentDAO;

	public void setStudentDAO(StudentDAO studentDAO) {
		this.studentDAO = studentDAO;
	}

	@Override
	public List<Student> findAll() {
		return studentDAO.findAll();
	}

	@Override
	public void addOrEdit(Student student) {
		studentDAO.saveOrUpdate(student);
	}

	@Override
	public Student findById(int stuID) {
		return studentDAO.findById(stuID);
	}

	@Override
	public void delete(Student student) {
		studentDAO.delete(student);
	}

	@Override
	public void add(Student student) {
		studentDAO.save(student);
	}

	@Override
	public void edit(Student student) {
		studentDAO.update(student);
	}

	@Override
	public Page<Student> findAllPage(int pageNum, int pageSize) {
		int totalRecord = studentDAO.getTotalRecord();
		Page<Student> page = new Page<Student>(pageNum, pageSize, totalRecord);
		page.setData(studentDAO.findAllWithPage(page.getStartIndex(), pageSize));
		return page;
	}
}
