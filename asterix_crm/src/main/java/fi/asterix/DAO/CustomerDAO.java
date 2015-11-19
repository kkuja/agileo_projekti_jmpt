package fi.asterix.DAO;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fi.asterix.JPA.Address;
import fi.asterix.JPA.Company;
import fi.asterix.JPA.Customer;
import fi.asterix.JPA.Employee;
import fi.asterix.JPA.State;

import org.springframework.transaction.annotation.Propagation;

@Repository
// ALKUP. @Repository("customerDAO")
@Transactional(readOnly = true, propagation = Propagation.REQUIRED)
// ALKUP. @Transactional(propagation = Propagation.REQUIRED)
public class CustomerDAO implements Serializable {

	private static final long serialVersionUID = 1L;

	@PersistenceContext
	private EntityManager em;

	public EntityManager getEm() {
		return em;
	}

	public void setEm(EntityManager em) {
		this.em = em;
	}

	public CustomerDAO() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("asterix_crm");
		this.em = emf.createEntityManager();
	}

	@SuppressWarnings("unchecked")
	public List<Customer> findAllCustomers() {

		List<Customer> customers = (List<Customer>) em.createQuery("select c from Customer c").getResultList();

		for (Customer customer : customers) {
			// Haetaan kannasta uusin versio (kaikki tiedot eivät välttämättä
			// näytä päivittyvän)
			em.refresh(customer);
		}

		return customers;
	}

	@SuppressWarnings("unchecked")
	public List<Address> findAllAddresses() {

		List<Address> addresses = (List<Address>) em.createQuery("select a from Address a").getResultList();
		return addresses;
	}

	@SuppressWarnings("unchecked")
	public Map<Integer, String> getAddressSelect() {

		Map<Integer, String> addressMap = new HashMap<Integer, String>();

		for (Address address : findAllAddresses()) {

			// Haetaan kannasta uusin versio (kaikki tiedot eivät välttämättä
			// näytä päivittyvän)
			em.refresh(address);

			String addressString = address.getStreetAddress() + ", " + address.getCountry();
			addressMap.put(address.getId(), addressString);
		}

		return addressMap;
	}

	// Haetaan yritykset lomakkeen pudotusvalikkoa varten
	@SuppressWarnings("unchecked")
	public List<Company> findAllCompanies() {

		List<Company> companies = (List<Company>) em.createQuery("select c from Company c").getResultList();
		return companies;
	}

	@SuppressWarnings("unchecked")
	public Map<Integer, String> getCompanySelect() {

		Map<Integer, String> companyMap = new HashMap<Integer, String>();

		for (Company company : findAllCompanies()) {

			em.refresh(company);

			String companyString = company.getName();
			companyMap.put(company.getId(), companyString);
		}

		return companyMap;
	}

	@SuppressWarnings("unchecked")
	public List<State> findAllStates() {

		List<State> states = (List<State>) em.createQuery("select s from State s").getResultList();
		return states;
	}

	@SuppressWarnings("unchecked")
	public Map<Integer, String> getStateSelect() {

		Map<Integer, String> stateMap = new HashMap<Integer, String>();

		for (State state : findAllStates()) {

			em.refresh(state);
			String stateString = state.getState();

			stateMap.put(state.getId(), stateString);
		}

		return stateMap;
	}

	@SuppressWarnings("unchecked")
	public List<Employee> findAllEmployees() {

		List<Employee> employees = (List<Employee>) em.createQuery("select e from Employee e").getResultList();
		return employees;
	}

	@SuppressWarnings("unchecked")
	public Map<Integer, String> getEmployeeSelect() {

		Map<Integer, String> employeeMap = new HashMap<Integer, String>();

		for (Employee employee : findAllEmployees()) {

			em.refresh(employee);

			// alustus pelkällä mailiosoitteella
			String employeeString = "(" + employee.getEmail() + ")";

			if (employee.getWebuser() != null) {
				employeeString = employee.getWebuser().getLastname() + "," + employee.getWebuser().getFirstname() + " ("
						+ employee.getEmail() + ")";
			}

			employeeMap.put(employee.getId(), employeeString);
		}

		return employeeMap;
	}

	// lisätty getAddress testin vuoksi - jos erikseen tarvitaan hakea
	// id-arvolla address-tietuetta
	@SuppressWarnings("unchecked")
	public Address getAddress(int id) {

		List<Address> addresses = (List<Address>) em.createQuery("select a from Address a where a.id = :id")
				.setParameter("id", id).getResultList();

		if (!addresses.isEmpty()) {
			return addresses.get(0);
		}

		return null;
	}

	@Transactional
	public Customer save(Customer customer) {

		EntityTransaction ta = em.getTransaction();
		ta.begin();

		System.out.println("Customer: " + customer);

		// Is new?
		if (customer.getId() == 0) {

			System.out.println("Id on 0, new persist...");

			em.persist(customer);
			ta.commit();

			return customer;

		} else {

			System.out.println("Id ei ollut 0, merge customer...");

			Customer mergeCustomer = em.merge(customer);
			ta.commit();

			return mergeCustomer;
			// return em.merge(customer);
		}
	}

	public Customer update(Customer customer) {
		em.merge(customer);
		return customer;
	}

	public void delete(Customer customer) {
		em.remove(customer);
	}
}
