package service.customer.impl;

import model.Customer;
import repository.customer.impl.CustomerRepositoryImpl;
import repository.customer.interfacee.ICustomerRepository;
import service.customer.interfacee.ICustomerService;

import java.util.List;

public class CustomerServiceImpl implements ICustomerService {

    ICustomerRepository customerRepository = new CustomerRepositoryImpl();


    @Override
    public List<Customer> search(String name, String address) {
        return customerRepository.search(name, address);
    }

    @Override
    public void addNew(Customer customer) {
        customerRepository.addNew(customer);
    }

    @Override
    public void edit(Customer customer) {
        customerRepository.edit(customer);
    }

    @Override
    public List<Customer> orderByName() {
       return customerRepository.orderByName();
    }

    @Override
    public void delete(String id) {
        customerRepository.delete(id);
    }
}
