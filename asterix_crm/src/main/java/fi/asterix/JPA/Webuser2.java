package fi.asterix.JPA;

import java.io.Serializable;
import java.lang.String;
import javax.persistence.*;

import org.hibernate.annotations.Type;

/**
 * Entity implementation class for Entity: webuser2
 *
 */
@Entity
@Table(name="webuser2")
//@NamedQueries({ @NamedQuery(name = "haeKaikki", query = "SELECT w from Webuser2 w")})
public class Webuser2 implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	private int id;
	private String username;
	private String password_encrypted;	
	@Column(nullable = false)
	@Type(type = "org.hibernate.type.NumericBooleanType")	
	private boolean enabled;
	private String firstname;
	private String lastname;
	private static final long serialVersionUID = 1L;

	public Webuser2() {
		super();
	}   
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}   
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}   
	public String getPassword_encrypted() {
		return this.password_encrypted;
	}

	public void setPassword_encrypted(String password_encrypted) {
		this.password_encrypted = password_encrypted;
	}   
	public boolean getEnabled() {
		return this.enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
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
   
}
