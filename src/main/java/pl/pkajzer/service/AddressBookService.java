package pl.pkajzer.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;






import pl.pkajzer.entity.AddressBook;
import pl.pkajzer.repository.AddressBookRepository;

@Service
@Transactional
public class AddressBookService {

	
	@Autowired
	private AddressBookRepository addressBookRepository;
	
	public List<AddressBook> findAll(){
		return addressBookRepository.findAll();
	}

	public AddressBook findOne(int id) {

		return addressBookRepository.findOne(id);
	}

	public void save(AddressBook addressBookContact) {
		addressBookRepository.save(addressBookContact);
		
	}

	public void remove(int id) {
		addressBookRepository.delete(id);
	}
}
