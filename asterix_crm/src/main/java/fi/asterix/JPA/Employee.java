package fi.asterix.JPA;

import fi.asterix.JPA.Webuser2;
import java.io.Serializable;
import java.lang.String;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Employee
 *
 */
@Entity
public class Employee implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	private int id;
	private Webuser2 webuser;
	private String email;
	private Address address;
	private String phone;
	private static final long serialVersionUID = 1L;

	public Employee() {
		super();
	}   
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}   
	public Address getAddress() {
		return this.address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}   
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public Webuser2 getWebuser() {
		return webuser;
	}
	
	public void setWebuser(Webuser2 webuser) {
		this.webuser = webuser;
	}
   
}
