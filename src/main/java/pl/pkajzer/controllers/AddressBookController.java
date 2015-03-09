package pl.pkajzer.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pl.pkajzer.service.AddressBookService;


@Controller
public class AddressBookController {

	
	@Autowired
	private AddressBookService addressBookService;
	
	@RequestMapping("/list")
	public String entries(Model model) {
		model.addAttribute("entries", addressBookService.findAll());
		return "list";
	}
	
}
