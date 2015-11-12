package fi.asterix.JPA;

import java.io.Serializable;
import java.lang.String;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Customer
 *
 */
@Entity

public class Customer implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	private int id;
	private String firstname;
	private String lastname;
	private Company company;
	private String email;
	private String phone;
	private byte[] photo;
	private Address addess;
	private Employee salesPerson;
	private State customerState;
	private static final long serialVersionUID = 1L;

	public Customer() {
		super();
	}   
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}   
	public String getFirstname() {
		return this.firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}   
	public String getLastname() {
		return this.lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}   
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}   
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}   
	public byte[] getPhoto() {
		return this.photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}   
	public Address getAddess() {
		return this.addess;
	}

	public void setAddess(Address addess) {
		this.addess = addess;
	}   
	public Employee getSalesPerson() {
		return this.salesPerson;
	}

	public void setSalesPerson(Employee salesPerson) {
		this.salesPerson = salesPerson;
	}   
	public State getCustomerState() {
		return this.customerState;
	}

	public void setCustomerState(State customerState) {
		this.customerState = customerState;
	}
	public Company getCompany() {
		return company;
	}
	public void setCompany(Company company) {
		this.company = company;
	}
   
}
