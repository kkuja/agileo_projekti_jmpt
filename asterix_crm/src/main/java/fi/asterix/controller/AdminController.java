package fi.asterix.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import fi.asterix.DAO.AuthorityDAO;
import fi.asterix.DAO.Webuser2DAO;
import fi.asterix.JPA.Address;
import fi.asterix.JPA.Authority;
import fi.asterix.JPA.Customer;
import fi.asterix.JPA.Webuser2;

@Controller
@RequestMapping(value="/secure/admin")
public class AdminController {
	
	@Inject
	private Webuser2DAO wuDAO;	
	@Inject
	private AuthorityDAO authDAO;

	@RequestMapping(value = "/tools", method = RequestMethod.GET)
	public String paasivu(Model model) {
		
		//List<Authority> roolit = authDAO.findAll();

		//model.addAttribute("roolit", roolit);
		return "secure/admin/tools";
	}
	
	// Lomakkeen luominen
	@RequestMapping(value = "/adduser", method = RequestMethod.GET)
	public String adduser(Model model) {
		
		List<Authority> authorities = authDAO.findAll();
		Webuser2 wu = new Webuser2();
//		List<Authority> auth= new ArrayList<Authority>();
//		wu.setAuthorities(auth);
		model.addAttribute("newuser", wu);
		model.addAttribute("authorities", authorities);
		return "secure/admin/adduser";
	}
	
	// Lomakkeen tietojen ottaminen vastaan
	@RequestMapping(value = "/adduser", method = RequestMethod.POST)
	public String addNew(@Valid Webuser2 wu, BindingResult result, SessionStatus state, ModelMap model) {
		
		System.out.println(wu);	
		System.out.println(result);
		System.out.println(model);
		
		
		// Tehty demoamista varten. Ei vielä lisää valittuja rooleja
//		List<Authority> roles = new ArrayList<Authority>();
//		Authority auth = new Authority();
//		auth.setRole("ROLE_ADMIN");
//		roles.add(auth);	
//		wu.setAuthorities(roles);
		
		System.out.println(wu);
		// Tiedot pitää hakea tallentamisen jälkeen tietokannasta ja palautetaan haettu käyttäjä
		model.addAttribute("webuser", wu);
		return "secure/admin/addeduser";
	}

	
	
	
	@RequestMapping(value = "/listusers", method = RequestMethod.GET)
	public String listusers(Model model) {
		
//		List<Authority> roolit = authDAO.findAll();
		List<Webuser2> users = wuDAO.findAll();
		
//		for (int i = 0; i < users.size(); i++) {
//			System.out.println(users.get(i));
//		}		

		model.addAttribute("users", users);
		return "secure/admin/listusers";
	}	
}
