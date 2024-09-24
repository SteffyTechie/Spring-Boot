package com.example.employee.service;

import com.example.employee.model.Employee;
import com.example.employee.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EmployeeService {

        @Autowired
        private EmployeeRepository employeeRepository;


        public Employee createEmployee(Employee employee) {
            return employeeRepository.save(employee);
        }

        public List<Employee> getAllEmployees() {
            return employeeRepository.findAll();
        }


        public Optional<Employee> getEmployeeById(Integer id) {
            return employeeRepository.findById(id);
        }


        public Employee updateEmployee(Integer id, Employee employeeDetails) {
            Optional<Employee> optionalEmployee = employeeRepository.findById(id);

            if (optionalEmployee.isPresent()) {
                Employee employee = optionalEmployee.get(); // If found, get the employee
                // Update employee details
                employee.setName(employeeDetails.getName());
                employee.setPassword(employeeDetails.getPassword());
                employee.setDepartment(employeeDetails.getDepartment());

                return employeeRepository.save(employee); // Save the updated employee
            } else {
                throw new RuntimeException("Employee not found with id: " + id); // Handle employee not found case
            }
        }


        public void deleteEmployee(Integer id) {
            employeeRepository.deleteById(id);
        }
    }

