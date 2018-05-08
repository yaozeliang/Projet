package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import model.Car;

import org.springframework.hateoas.ResourceSupport;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import dto.CarDTO;

@Controller
public class MyRentController implements RentService{

	List<Car> cars = new ArrayList<Car>();	// reprente base de dojnn�es
	
	public MyRentController(){
		Car car = new Car();
		car.setPlateNumber("11AA22");
		car.setRented(false);		
		cars.add(car);
		car = new Car();
		car.setPlateNumber("22BB33");
		car.setRented(false);		
		cars.add(car);
	}
	
	@RequestMapping(value = "/entryPoint", method = RequestMethod.GET)
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	@Override
	public ResourceSupport get() {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	*
	* @return all cars not rented
	*/
	@RequestMapping(value = "/car", method = RequestMethod.GET)
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	@Override
	public List<CarDTO> getCars() {
		List<CarDTO> dtos = new ArrayList<CarDTO>();
		Car car;
		for(int i=0; i<cars.size(); i++){	// parcours BDD
			car = cars.get(i);				// extrait i�me voiture
			if(car.isRented() == false){	// ? lou�e
				CarDTO dto = new CarDTO(car);	// non lou�e : cr�ation DTO
				dtos.add(dto);				
			}
		}
		return dtos;
	}

	/**
	* Return specifications of a car.
	* @param plateNumber
	* @return car specifications only (if not rented)
	* @throws Exception no car with this plate number or already rented
	*/
	@RequestMapping(value = "/car/{plateNumber}", method = RequestMethod.GET)
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	@Override
	public CarDTO getCar(@PathVariable("plateNumber") String plateNumber) throws Exception {
		Car car;
		int i=0;
		while(i<cars.size() && cars.get(i).getPlateNumber().equals(plateNumber)==false){
			i++;
		}
		if(i<cars.size()){	// voiture trouv�e
			car = cars.get(i);
			return new CarDTO(car);
		} else {			// voiture non trouv�e
			throw new IOException("No car with such a plate number");
		}
	}

	/**
	* Rent a car.
	* @param plateNumber
	* @return car specifications
	* @throws Exception no car with this plate number or already rented
	*/
	@RequestMapping(value = "/car/{plateNumber}", method = RequestMethod.DELETE)
	@ResponseStatus(HttpStatus.OK)
	@Override
	public void rentCar(@PathVariable("plateNumber") String plateNumber) throws Exception {
		Car car;
		int i=0;
		while(i<cars.size() && cars.get(i).getPlateNumber().equals(plateNumber)==false){
			i++;
		}
		if(i<cars.size()){	// voiture trouv�e
			car = cars.get(i);
			car.setRented(true);
		} else {			// voiture non trouv�e
			throw new IOException("No car with such a plate number");
		}
	}

	/**
	*
	** @return actions to be done
	* @throws Exception no car with this plate number or not rented
	*/
	@RequestMapping(value = "/car/{plateNumber}", method = RequestMethod.PUT)
	@ResponseStatus(HttpStatus.OK)
	@Override
	public void renderCar(@PathVariable("plateNumber") String plateNumber) throws Exception {
		Car car;
		int i=0;
		while(i<cars.size() && cars.get(i).getPlateNumber().equals(plateNumber)==false){
			i++;
		}
		if(i<cars.size()){	// voiture trouv�e
			car = cars.get(i);
			car.setRented(false);
		} else {			// voiture non trouv�e
			throw new IOException("No car with such a plate number");
		}
	}

}
