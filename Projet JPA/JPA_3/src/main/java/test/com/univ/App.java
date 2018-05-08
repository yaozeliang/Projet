package test.com.univ;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import com.univ.Car;
import com.univ.Person;
import com.univ.Rent;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	EntityManagerFactory emf = Persistence.createEntityManagerFactory("manager1");
		EntityManager entityManager = emf.createEntityManager();
		
		EntityTransaction tx = entityManager.getTransaction();
		
    	try{
    		
			tx.begin();
			
			Person p = new Person();
			Car q = new Car();
			Rent m= new Rent();
			
			p.setName("XX");
			p.setId(9);
			q.setnumberOfSeats(3);
			q.setplateNumber(111118);
			
			m.setId(9);
			m.setPerson(p);
			m.setVehicule(q);
			DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
			Date beginDate = dateFormat.parse("08/01/2016");
			m.setBeginrent(beginDate);
			m.setEndrent(beginDate);
			
			entityManager.persist(p);
			entityManager.persist(q);
			entityManager.persist(m);
		   
			tx.commit();
			//Scalar function
//			Query query = entityManager.createQuery("Select * from VEHICULE");
//		   	List<String> list=query.getResultList();
//		   	
//		   	for(String C:list)
//		   	{
//		   		System.out.println("VEHICULE :"+C);
//		   	}
//		   	
//		   	//Aggregate function
//		   	Query query1 = entityManager.createQuery("Select MAX(e.salary) from Employee e");
//		   	Double result=(Double) query1.getSingleResult();
//		   	System.out.println("Max Employee Salary :"+result);
		
		}catch(Exception e){
			tx.rollback();
		}
		
	}
}
