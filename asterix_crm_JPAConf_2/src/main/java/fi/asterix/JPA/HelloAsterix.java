package fi.asterix.JPA;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class HelloAsterix {
	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("asterix_crm_JPAConf_2");
		EntityManager em = emf.createEntityManager();
		EntityTransaction ta = em.getTransaction();
		ta.begin();
		HelloEntity hello = new HelloEntity();
		hello.setMessage("jotain 4"); 
		em.persist(hello);
		
//		webuser2 wu = new webuser2();
//		wu.setEnabled(true);
//		wu.setFirstname("Uusi");
//		wu.setLastname("Käyttäjä");
//		wu.setUsername("kayttaja");
//		wu.setPassword_encrypted("fe6c9ef3e1a61a37e1073fafaf7dc42b0d976a170ad4013e7b5304fd9ac60602770d18777361b2e5");
//		em.persist(wu);
//		ta.commit();
//		em.close();		
		
//		Authority auth = new Authority();
//		auth.setRole("POISTA_TAMA4");
//		em.persist(auth);
		ta.commit();
		em.close();
	}

}