package fi.asterix.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fi.asterix.DAO.AuthorityDAO;
import fi.asterix.JPA.Authority;

@Controller
@RequestMapping(value="/secure/admin")
public class AdminController {
	
	@Inject
	private AuthorityDAO authDAO;	

	@RequestMapping(value = "/tools", method = RequestMethod.GET)
	public String paasivu(Model model) {
		
		List<Authority> roolit = authDAO.findAll();

		model.addAttribute("roolit", roolit);
		return "secure/admin/tools";
	}
}
