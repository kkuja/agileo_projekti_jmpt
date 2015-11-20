package fi.asterix.JPA;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class HelloAsterix {
	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("asterix_crm");
		EntityManager em = emf.createEntityManager();
		EntityTransaction ta = em.getTransaction();
		ta.begin();
//		HelloEntity hello = new HelloEntity();
//		hello.setMessage("toka viesti"); 
//		em.persist(hello);
		
		Webuser2 wu = new Webuser2();
		wu.setEnabled(true);
		wu.setFirstname("Test");
		wu.setLastname("Suojattu");
		wu.setUsername("testikäyttäjä");
		wu.setPassword_encrypted("Suojattu");

		em.persist(wu);
		ta.commit();
		em.close();		
		
//		Authority auth = new Authority();
//		auth.setRole("POISTA_TAMA4");
//		em.persist(auth);
		
//		List<Authority> au = (List<Authority>) em.createQuery("select a from Authority a").getResultList();				
//		System.out.println(au);
			
		
		//ta.commit();
//		em.close();
		
	}

}