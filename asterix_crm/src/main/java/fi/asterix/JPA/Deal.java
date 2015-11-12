package fi.asterix.JPA;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Deal
 *
 */
@Entity

public class Deal implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)		
	private int id;
	private Employee salesPerson;
	private Employee technician;
	private byte[] deliveryContract;
	private State deliveryState;
	private List<DeliveryObject> deliveryObjects;
	private double price;
	private Date expirationDate;
	private Customer customer;
	private List<Note> notes;
	private static final long serialVersionUID = 1L;

	public Deal() {
		super();
	} 
	
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	} 
	
	public Employee getSalesPerson() {
		return this.salesPerson;
	}

	public void setSalesPerson(Employee salesPerson) {
		this.salesPerson = salesPerson;
	}   
	
	public Employee getTechnician() {
		return this.technician;
	}

	public void setTechnician(Employee technician) {
		this.technician = technician;
	}  
	
	public byte[] getDeliveryContract() {
		return this.deliveryContract;
	}

	public void setDeliveryContract(byte[] deliveryContract) {
		this.deliveryContract = deliveryContract;
	}  
	
	public State getDeliveryState() {
		return this.deliveryState;
	}

	public void setDeliveryState(State deliveryState) {
		this.deliveryState = deliveryState;
	}  
	
	public List<DeliveryObject> getDeliveryObjects() {
		return this.deliveryObjects;
	}

	public void setDeliveryObjects(List<DeliveryObject> deliveryObjects) {
		this.deliveryObjects = deliveryObjects;
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
	
	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	} 
	
	public List<Note> getNotes() {
		return this.notes;
	}

	public void setNotes(List<Note> notes) {
		this.notes = notes;
	}
   
}
