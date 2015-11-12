package fi.asterix.JPA;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Delivery
 *
 */
@Entity

public class Delivery implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)			
	private int id;
	private Address deliveryAddress;
	private State deliveryState;
	private Date startDate;
	private Date endDate;
	private Invoice invoice;
	private static final long serialVersionUID = 1L;

	public Delivery() {
		super();
	}   
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}   
	public Address getDeliveryAddress() {
		return this.deliveryAddress;
	}

	public void setDeliveryAddress(Address deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}   
	public State getDeliveryState() {
		return this.deliveryState;
	}

	public void setDeliveryState(State deliveryState) {
		this.deliveryState = deliveryState;
	}   
	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}   
	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}   
	public Invoice getInvoice() {
		return this.invoice;
	}

	public void setInvoice(Invoice invoice) {
		this.invoice = invoice;
	}
   
}
