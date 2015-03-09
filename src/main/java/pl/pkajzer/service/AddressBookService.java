package pl.pkajzer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;




import pl.pkajzer.entity.AddressBook;
import pl.pkajzer.repository.AddressBookRepository;

@Service
public class AddressBookService {

	
	@Autowired
	private AddressBookRepository addressBookRepository;
	
	public List<AddressBook> findAll(){
		return addressBookRepository.findAll();
	}
}
