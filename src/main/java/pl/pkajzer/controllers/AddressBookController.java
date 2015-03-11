package pl.pkajzer.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pl.pkajzer.entity.AddressBook;
import pl.pkajzer.service.AddressBookService;


@Controller
public class AddressBookController {

	
	@Autowired
	private AddressBookService addressBookService;
	
	@ModelAttribute("addressBookContact")
	public AddressBook construct() {
		return new AddressBook();
	}
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
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
	
	
	@RequestMapping("/contacts/add")
	public String addContact(Model model) {
		return "add-contact";
	}
	@RequestMapping(value="/contacts/add", method=RequestMethod.POST)
	public String addContactRequest(Model model, @Valid @ModelAttribute("addressBookContact") AddressBook addressBookContact, BindingResult result) {
		if(result.hasErrors())
			return "add-contact";
		addressBookService.save(addressBookContact);
		return "redirect:/contacts/add?success=true";
	}
	
	
	@RequestMapping(value="/contacts/remove/{id}")
	public String addContactRequest(Model model, @PathVariable int id) {
		addressBookService.remove(id);
		return "redirect:/contacts?removed=true";
	}
}
