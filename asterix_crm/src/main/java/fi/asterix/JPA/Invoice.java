package fi.asterix.JPA;

import java.io.Serializable;
import java.lang.String;
import java.sql.Date;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Invoice
 *
 */
@Entity

public class Invoice implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)		
	private int id;
	private double price;
	private Date expirationDate;
	private Date termOfPayment;
	private Customer billingContact;
	private String comment;
	private static final long serialVersionUID = 1L;

	public Invoice() {
		super();
	}   
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}   
	public double getPrice() {
		return this.price;
	}

	public void setPrice(double price) {
		this.price = price;
	}   
	public Date getExpirationDate() {
		return this.expirationDate;
	}

	public void setExpirationDate(Date expirationDate) {
		this.expirationDate = expirationDate;
	}   
	public Date getTermOfPayment() {
		return this.termOfPayment;
	}

	public void setTermOfPayment(Date termOfPayment) {
		this.termOfPayment = termOfPayment;
	}   
	public Customer getBillingContact() {
		return this.billingContact;
	}

	public void setBillingContact(Customer billingContact) {
		this.billingContact = billingContact;
	}   
	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
   
}
