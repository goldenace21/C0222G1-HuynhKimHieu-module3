package service.employee;

import model.Employee;
import repository.employee.EmployeeRepositoryImpl;
import repository.employee.IEmployeeRepository;

import java.util.List;

public class EmployeeServiceImpl implements IEmployeeService {
    IEmployeeRepository employeeRepository = new EmployeeRepositoryImpl();

    @Override
    public void addNew(Employee employee) {
        employeeRepository.addNew(employee);
    }

    @Override
    public List<Employee> search(String name, String address) {
        return employeeRepository.search(name,address);
    }
}
