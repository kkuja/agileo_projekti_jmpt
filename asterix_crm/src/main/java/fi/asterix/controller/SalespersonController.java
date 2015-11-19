package fi.asterix.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;

import fi.asterix.DAO.CompanyDAO;
import fi.asterix.DAO.DealDAO;
import fi.asterix.DAO.CustomerDAO;
import fi.asterix.JPA.Address;
import fi.asterix.JPA.Company;
import fi.asterix.JPA.Customer;
import fi.asterix.JPA.Employee;
import fi.asterix.JPA.State;

@Controller
@RequestMapping(value = "/secure/salesperson")
public class SalespersonController {

	@Inject
	private CompanyDAO companyDAO;

	@Inject
	private DealDAO dealDAO;

	@Inject
	private CustomerDAO custoDAO;

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

	// Listataan kaikki asiakkaat
	@RequestMapping(value = "/customermainpage", method = RequestMethod.GET)
	public String findAllCustomers(Model model) {

		List<Customer> customers = custoDAO.findAllCustomers();

		model.addAttribute("customers", customers);

		return "secure/salesperson/customermainpage";
	}

	// Lomakkeen luominen
	@RequestMapping(value = "/newcustomer", method = RequestMethod.GET)
	public String newForm(Model model) {

		Customer tk = new Customer();

		model.addAttribute("customer", tk);
		
		// Haetaan address, company, state ja vastuumyjä
		// Huom! Vastuumyyjä voi nyt olla kuka tahansa henkilöstöstä, eli ei saisi oikeasti toimia näin!
		Map<Integer, String> addresses = custoDAO.getAddressSelect();
		model.addAttribute("addresses", addresses);

		Map<Integer, String> companies = custoDAO.getCompanySelect();
		model.addAttribute("companies", companies);

		Map<Integer, String> customerstates = custoDAO.getStateSelect();
		model.addAttribute("customerstates", customerstates);

		Map<Integer, String> salespersons = custoDAO.getEmployeeSelect();
		model.addAttribute("salespersons", salespersons);

		return "secure/salesperson/newcustomer";
	}

	// Lomakkeen tietojen ottaminen vastaan
	@RequestMapping(value = "/newcustomer", method = RequestMethod.POST)
	public String addNew(@Valid Customer tk, BindingResult result, SessionStatus state, ModelMap model) {

		// haetaan DAO:sta lomakkeelta syötetyllä id-arvolla Address-tietue
		Address address = custoDAO.getAddress(tk.getAddess().getId());
		tk.setAddess(address);

		System.out.println("Lomakkeen tiedot (Customer) ovat: " + tk);

		// tallennetaan lomakkeelta luettu tieto
		Customer custo = custoDAO.save(tk);
		model.addAttribute("customer", custo);

		return "secure/salesperson/tools";
	}
}
