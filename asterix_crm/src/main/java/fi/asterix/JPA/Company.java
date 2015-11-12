package fi.asterix.JPA;

import java.io.Serializable;
import java.lang.String;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Company
 *
 */
@Entity

public class Company implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)		
	private int id;
	private String name;
	private Address address;
	private static final long serialVersionUID = 1L;

	public Company() {
		super();
	}   
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}   
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}   
	public Address getAddress() {
		return this.address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}
   
}
