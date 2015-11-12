package fi.asterix.JPA;

import java.io.Serializable;
import java.lang.String;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Address
 *
 */
@Entity

public class Address implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)		
	private int id;
	private String streetAddress;
	private String postalCode;
	private String postOffice;
	private String country;
	private static final long serialVersionUID = 1L;

	public Address() {
		super();
	}   
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}   
	public String getStreetAddress() {
		return this.streetAddress;
	}

	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}   
	public String getPostalCode() {
		return this.postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}   
	public String getPostOffice() {
		return this.postOffice;
	}

	public void setPostOffice(String postOffice) {
		this.postOffice = postOffice;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
  
}
