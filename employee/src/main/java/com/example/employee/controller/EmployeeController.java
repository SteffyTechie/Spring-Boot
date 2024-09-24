package com.example.employee.controller;

import com.example.employee.model.Employee;
import com.example.employee.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/employees")
public class EmployeeController {
    @Autowired
    private EmployeeService  employeeService;


        @PostMapping("/create")
        public Employee createEmployee(@RequestBody Employee employee) {
            return employeeService.createEmployee(employee);
        }


        @GetMapping("/getall")
        public List<Employee> getAllEmployees()
        {
            return employeeService.getAllEmployees();
        }


        @GetMapping("/{id}")
        public Optional<Employee> getEmployeeById(@PathVariable Integer id)
        {
            return employeeService.getEmployeeById(id);
        }


    @PutMapping("/update/{id}")
    public ResponseEntity<Employee> updateEmployee(@PathVariable Integer id, @RequestBody Employee employeeDetails) {
        try {
            Employee updatedEmployee = employeeService.updateEmployee(id, employeeDetails);
            return ResponseEntity.ok(updatedEmployee);
        } catch (RuntimeException e) {
            return ResponseEntity.notFound().build(); // Return 404 if employee not found
        }
    }

        @DeleteMapping("/delete/{id}")
        public void deleteEmployee(@PathVariable Integer id) {
            employeeService.deleteEmployee(id);
        }
    }


