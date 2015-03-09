package pl.pkajzer.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import pl.pkajzer.service.AddressBookService;


@Controller
public class AddressBookController {

	
	@Autowired
	private AddressBookService addressBookService;
	
	@RequestMapping("/contacts")
	public String allContacts(Model model) {
		model.addAttribute("contacts", addressBookService.findAll());
		return "contacts";
	}
	
	@RequestMapping("/contacts/{id}")
	public String contactDetails(Model model, @PathVariable int id) {
		model.addAttribute("contact", addressBookService.findOne(id));
		return "contact-details";
	}
}
