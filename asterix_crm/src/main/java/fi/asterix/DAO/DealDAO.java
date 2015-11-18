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

import fi.asterix.JPA.Deal;

import org.springframework.transaction.annotation.Propagation;

@Repository("DealDAO")
@Transactional(propagation = Propagation.REQUIRED)
public class DealDAO implements Serializable {

	private static final long serialVersionUID = 1L;

	@PersistenceContext
	private EntityManager em;
	
	public DealDAO() {
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
	public List<Deal> findAll() {

		List<Deal> deals = (List<Deal>) em.createQuery("select d from Deal d").getResultList();
		return deals;
	}	
	
	@SuppressWarnings("unchecked")
	public List<Deal> findById(int id) {
		List<Deal> deals = (List<Deal>) em.createQuery("select d from Deal d where d.id = :id")
				.setParameter("id", id).getResultList();
		return deals;
	}	
	
	public Deal save(Deal deal) {
		EntityTransaction ta = em.getTransaction();
		ta.begin();		
		em.persist(deal);
		ta.commit();
		return deal;
	}
	
	public Deal update(Deal deal) {
		em.merge(deal);
		return deal;
	}

	public void delete(Deal deal) {
		em.remove(deal);
	}	
	
}
