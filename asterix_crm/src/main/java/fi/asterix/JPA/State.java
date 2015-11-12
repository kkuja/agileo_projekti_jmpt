package fi.asterix.JPA;

import java.io.Serializable;
import java.lang.String;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: State
 *
 */
@Entity(name="State")
public class State implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)		
	private int id;
	private String stateId;
	private String state;
	private static final long serialVersionUID = 1L;

	public State() {
		super();
	}   
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}   
	public String getStateId() {
		return this.stateId;
	}

	public void setStateId(String stateId) {
		this.stateId = stateId;
	}   
	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}
   
}
