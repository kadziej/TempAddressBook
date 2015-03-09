package pl.pkajzer.service;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pl.pkajzer.entity.AddressBook;
import pl.pkajzer.repository.AddressBookRepository;

@Transactional
@Service
public class DbInitService {

	@Autowired
	private AddressBookRepository addressBookRepository;
	
	@PostConstruct
	public void init() {
		AddressBook address=new AddressBook();
		address.setFirstName("Andrzej");
		address.setLastName("Koper");
		address.setPhoneNumber("232328789");
		address.setPostCode("25-344");
		addressBookRepository.save(address);
		
	}
}
