package pl.pkajzer.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.format.annotation.NumberFormat;


@Entity
@Table (name="ADDRESS_BOOK")
public class AddressBook {
	
	@Id
	@GeneratedValue
	private Integer id;
	
	@NotEmpty(message="To pole jest wymagane!")
	@Size(min = 2, max = 30, message="Imiê musi byæ w przedziale 2 - 30 znaków!")
	private String firstName;

	@Size(min = 2, max = 30, message="Nazwisko musi byæ w przedziale 2 - 30 znaków!")
    private String lastName;
	
	@NotEmpty(message="To pole jest wymagane!")
    private String phoneNumber;
	
	@NotEmpty(message="To pole jest wymagane!")
    private String postCode;
    
    public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	

}
