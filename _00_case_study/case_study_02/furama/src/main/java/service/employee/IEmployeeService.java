package service.employee;

import model.Employee;

import java.util.List;

public interface IEmployeeService {
    void addNew(Employee employee);
    List<Employee> search(String name, String address);
}
