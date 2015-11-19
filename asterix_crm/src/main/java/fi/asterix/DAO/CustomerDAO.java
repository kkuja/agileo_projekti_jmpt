package fi.asterix.DAO;

import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fi.asterix.JPA.Address;
import fi.asterix.JPA.Customer;

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
		return customers;
	}

	// lisätty getAddress testin vuoksi - jos erikseen tarvitaan hakea id-arvolla address-tietuetta
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

		// Is new?
		if (customer.getId() == 0) {

			System.out.println("Id on 0, new persist...");

			em.persist(customer);
			ta.commit();
			
			return customer;
			
		} else {

			System.out.println("Id ei ollut 0, merge customer...");

			return em.merge(customer);
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
