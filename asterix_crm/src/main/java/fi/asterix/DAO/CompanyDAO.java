package fi.asterix.DAO;

import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fi.asterix.JPA.Company;

import org.springframework.transaction.annotation.Propagation;

@Repository("CompanyDAO")
@Transactional(propagation = Propagation.REQUIRED)
public class CompanyDAO implements Serializable {

	private static final long serialVersionUID = 1L;

	@PersistenceContext
	private EntityManager em;
	
	public CompanyDAO() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("asterix_crm");
		this.em = emf.createEntityManager();
	}
	
	public EntityManager getEm() {
		return em;
	}

	public void setEm(EntityManager em) {
		this.em = em;
	}
	
	@SuppressWarnings("unchecked")
	public List<Company> findAll() {

		List<Company> companies = (List<Company>) em.createQuery("select c from Company c").getResultList();
		return companies;
	}	
	
	@SuppressWarnings("unchecked")
	public List<Company> findByName(String name) {
		List<Company> companys = (List<Company>) em.createQuery("select c from Company c where c.name like :name")
				.setParameter("name", name).getResultList();
		return companys;
	}	
	
	public Company save(Company company) {
		EntityTransaction ta = em.getTransaction();
		ta.begin();		
		em.persist(company);
		ta.commit();
		return company;
	}
	
	public Company update(Company company) {
		em.merge(company);
		return company;
	}

	public void delete(Company company) {
		em.remove(company);
	}	
	
}
