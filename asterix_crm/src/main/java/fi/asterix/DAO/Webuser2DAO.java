package fi.asterix.DAO;

import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import fi.asterix.JPA.Authority;
import fi.asterix.JPA.Webuser2;
import fi.asterix.util.EntityManagerUtil;

@Repository("webuserDao")
@Transactional(propagation = Propagation.REQUIRED)
public class Webuser2DAO implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@PersistenceContext
	private EntityManager em = EntityManagerUtil.getEntityManager();
	
	public EntityManager getEm() {
		return em;
	}

	public void setEm(EntityManager em) {
		this.em = em;
	}

	public Webuser2DAO() {
		super();
	}
	
	@SuppressWarnings("unchecked")
	public List<Webuser2> findAll() {

		List<Webuser2> users = (List<Webuser2>) em.createQuery("select wu from Webuser2 wu").getResultList();
		return users;
	}		

}
