package gm.employees.controller;

import gm.employees.model.Employee;
import gm.employees.service.EmployeeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.util.List;

@Controller
public class IndexController {
    private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
    private final EmployeeService employeeService;

    // CONSTRUCTOR
    public IndexController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    // GET [host/employees]
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String init(ModelMap model) {
        List<Employee> employees = employeeService.listEmployees();
        employees.forEach(employee -> logger.info(employee.toString()));
        // Share model with view
        model.put("employees", employees);
        return "index"; // index.jsp
    }
}
