package fi.asterix.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/secure/salesperson")
public class SalespersonController {

	@RequestMapping(value = "/tools", method = RequestMethod.GET)
	public String paasivu(Model model) {

		return "secure/salesperson/tools";
	}

	@RequestMapping(value = "/addcompany", method = RequestMethod.GET)
	public String addCompany(Model model) {
		return "secure/salesperson/addcompany";
	}	
}
