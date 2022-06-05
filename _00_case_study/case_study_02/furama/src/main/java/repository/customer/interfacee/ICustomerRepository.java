package repository.customer.interfacee;

import model.Customer;
import java.util.List;

public interface ICustomerRepository {
    List<Customer> search(String name,String address);
    void addNew(Customer customer);
    void edit(Customer customer);
    List<Customer> orderByName();
    void delete(String id);
}
