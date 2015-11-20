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

import fi.asterix.JPA.Address;
import fi.asterix.JPA.Authority;
import fi.asterix.util.EntityManagerUtil;

import org.springframework.transaction.annotation.Propagation;

@Repository("authorityDao")
@Transactional(propagation = Propagation.REQUIRED)
public class AuthorityDAO implements Serializable {

	private static final long serialVersionUID = 1L;

	@PersistenceContext
	private EntityManager em = EntityManagerUtil.getEntityManager();
	
	public EntityManager getEm() {
		return em;
	}

	public void setEm(EntityManager em) {
		this.em = em;
	}
	
	public AuthorityDAO() {
		super();
	}
	
	@SuppressWarnings("unchecked")
	public List<Authority> findAll() {

		List<Authority> roles = (List<Authority>) em.createQuery("select a from Authority a").getResultList();
		return roles;
	}	
	
	@SuppressWarnings("unchecked")
	public List<Authority> findByName(String role) {
		List<Authority> roles = (List<Authority>) em.createQuery("select a from Authority a where a.role=:role")
				.setParameter("role", role).getResultList();
		return roles;
	}	
	
	public Authority save(Authority role) {	
		EntityTransaction ta = em.getTransaction();
		ta.begin();	
		em.persist(role);
		ta.commit();
		return role;
	}
	
	public Authority update(Authority role) {
		em.merge(role);
		return role;
	}

	public void delete(Authority role) {
		em.remove(role);
	}	
	
	public List<Authority> getRoles() {
		
		return  null;
	}
	
}
