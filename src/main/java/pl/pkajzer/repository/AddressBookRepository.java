package pl.pkajzer.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.pkajzer.entity.AddressBook;

public interface AddressBookRepository extends JpaRepository<AddressBook, Integer> {

}
