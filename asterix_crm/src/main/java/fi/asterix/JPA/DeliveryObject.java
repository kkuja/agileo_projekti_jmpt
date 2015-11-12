package fi.asterix.JPA;

import java.io.Serializable;
import java.lang.String;
import java.sql.Date;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: DeliveryObject
 *
 */
@Entity

public class DeliveryObject implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	private int id;
	private String name;
	private String productId;
	private String category;
	private Date deliveryDate;
	private Address deliveryAddress;
	private String deliveryCoordinates;
	private Employee technician;
	private State deliveryObjState;
	private String comment;
	
	private static final long serialVersionUID = 1L;

	public DeliveryObject() {
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
	public String getCategory() {
		return this.category;
	}

	public void setCategory(String category) {
		this.category = category;
	}   
	public String getProductId() {
		return this.productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}
	
	public Date getDeliveryDate() {
		return deliveryDate;
	}
	
	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	
	public Address getDeliveryAddress() {
		return deliveryAddress;
	}
	
	public void setDeliveryAddress(Address deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}
	public String getDeliveryCoordinates() {
		return deliveryCoordinates;
	}
	
	public void setDeliveryCoordinates(String deliveryCoordinates) {
		this.deliveryCoordinates = deliveryCoordinates;
	}
	
	public Employee getTechnician() {
		return technician;
	}
	
	public void setTechnician(Employee technician) {
		this.technician = technician;
	}
	
	public State getDeliveryObjState() {
		return deliveryObjState;
	}
	
	public void setDeliveryObjState(State deliveryObjState) {
		this.deliveryObjState = deliveryObjState;
	}
	
	public String getComment() {
		return comment;
	}
	
	public void setComment(String comment) {
		this.comment = comment;
	}
   
}
