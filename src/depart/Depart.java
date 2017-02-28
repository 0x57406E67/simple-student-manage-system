package depart;

import java.util.HashSet;
import java.util.Set;

import major.Major;

public class Depart implements java.io.Serializable {

	private static final long serialVersionUID = -6030817959029893964L;
	private Integer depID;
	private String depName;
	private String depPresident;
	private String depAddr;
	private String depTel;

	private Set<Major> majorSet = new HashSet<Major>();

	public Set<Major> getMajorSet() {
		return majorSet;
	}

	public void setMajorSet(Set<Major> majorSet) {
		this.majorSet = majorSet;
	}

	public Integer getDepID() {
		return depID;
	}

	public void setDepID(Integer depID) {
		this.depID = depID;
	}

	public String getDepName() {
		return depName;
	}

	public void setDepName(String depName) {
		this.depName = depName;
	}

	public String getDepPresident() {
		return depPresident;
	}

	public void setDepPresident(String depPresident) {
		this.depPresident = depPresident;
	}

	public String getDepAddr() {
		return depAddr;
	}

	public void setDepAddr(String depAddr) {
		this.depAddr = depAddr;
	}

	public String getDepTel() {
		return depTel;
	}

	public void setDepTel(String depTel) {
		this.depTel = depTel;
	}

}
