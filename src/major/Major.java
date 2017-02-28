package major;

import java.util.HashSet;
import java.util.Set;

import depart.Depart;
import clazz.Clazz;

public class Major implements java.io.Serializable {

	private static final long serialVersionUID = -1155930624006374441L;
	private Integer majID;
	private String majName;
	private String majPresident;// fudaoyuan
	private String majTel;
	private Depart depart; // 所属院系

	private Set<Clazz> clazzSet = new HashSet<Clazz>();

	public Set<Clazz> getClazzSet() {
		return clazzSet;
	}

	public void setClazzSet(Set<Clazz> clazzSet) {
		this.clazzSet = clazzSet;
	}

	public Integer getMajID() {
		return majID;
	}

	public void setMajID(Integer majID) {
		this.majID = majID;
	}

	public String getMajName() {
		return majName;
	}

	public void setMajName(String majName) {
		this.majName = majName;
	}

	public String getMajPresident() {
		return majPresident;
	}

	public void setMajPresident(String majPresident) {
		this.majPresident = majPresident;
	}

	public String getMajTel() {
		return majTel;
	}

	public void setMajTel(String majTel) {
		this.majTel = majTel;
	}

	public Depart getDepart() {
		return depart;
	}

	public void setDepart(Depart depart) {
		this.depart = depart;
	}

}
