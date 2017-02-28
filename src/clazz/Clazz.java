package clazz;

import java.util.HashSet;
import java.util.Set;

import student.Student;
import major.Major;

public class Clazz implements java.io.Serializable {
	
	private static final long serialVersionUID = 5181126353488629218L;
	private Integer clzID;
	private String clzName; //班级名字
	private Major major;    //所属专业
	private Set<Student> studentSet = new HashSet<Student>();
	
	public Set<Student> getStudentSet() {
		return studentSet;
	}
	public void setStudentSet(Set<Student> studentSet) {
		this.studentSet = studentSet;
	}
	public Integer getClzID() {
		return clzID;
	}
	public void setClzID(Integer clzID) {
		this.clzID = clzID;
	}
	public String getClzName() {
		return clzName;
	}
	public void setClzName(String clzName) {
		this.clzName = clzName;
	}
	public Major getMajor() {
		return major;
	}
	public void setMajor(Major major) {
		this.major = major;
	}
	
}
