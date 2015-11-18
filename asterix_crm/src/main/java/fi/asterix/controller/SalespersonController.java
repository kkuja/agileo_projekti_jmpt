package fi.asterix.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import fi.asterix.DAO.CompanyDAO;
import fi.asterix.DAO.DealDAO;

@Controller
@RequestMapping(value="/secure/salesperson")
public class SalespersonController {

	@Inject
	private CompanyDAO companyDAO;
	
	@Inject
	private DealDAO dealDAO;
	
	@RequestMapping(value = "/tools", method = RequestMethod.GET)
	public String paasivu(Model model) {

		return "secure/salesperson/tools";
	}

	@RequestMapping(value = "/addcompany", method = RequestMethod.GET)
	public String addCompany(Model model) {
		return "secure/salesperson/addcompany";
	}
	
	@RequestMapping(value = "/savecompany", method = RequestMethod.POST)
	public String saveCompany(Model model) {
		return "secure/salesperson/savecompany";
	}
	
	@RequestMapping(value = "/addnewdeal", method = RequestMethod.GET)
	public String addDeal(Model model) {
		return "secure/salesperson/addnewdeal";
	}	
	
	@RequestMapping(value = "/savedeal", method = RequestMethod.POST)
	public String saveDeal(Model model) {
		return "secure/salesperson/savedeal";
	}
	
}
