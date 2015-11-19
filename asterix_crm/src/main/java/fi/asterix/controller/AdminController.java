package fi.asterix.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fi.asterix.DAO.AuthorityDAO;
import fi.asterix.DAO.Webuser2DAO;
import fi.asterix.JPA.Authority;
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
	
	@RequestMapping(value = "/adduser", method = RequestMethod.GET)
	public String adduser(Model model) {
		
//		Authority rooli = new Authority();
//		rooli.setRole("UUSI_ROOLI");
//		authDAO.save(rooli);
		
		List<Authority> roolit = authDAO.findAll();
		model.addAttribute("roolit", roolit);
		return "secure/admin/adduser";
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
