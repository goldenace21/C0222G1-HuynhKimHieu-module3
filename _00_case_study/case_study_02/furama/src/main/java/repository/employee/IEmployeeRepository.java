package repository.employee;

import model.Employee;

import java.util.List;

public interface IEmployeeRepository {
    void addNew(Employee employee);
    List<Employee> search(String name,String address);
}
