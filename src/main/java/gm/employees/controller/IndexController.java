package gm.employees.controller;

import gm.employees.model.Employee;
import gm.employees.service.EmployeeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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

    // GET [host/employees/add]
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String showAdd() {
        return "add"; // to add.jsp
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addEmployee(@ModelAttribute("employeeForm") Employee employee) {
        logger.info("Employee to add: " + employee);
        employeeService.saveEmployee(employee);
        return "redirect:/"; // redirects to home
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String shoeEdit(@RequestParam int idEmployee, ModelMap model) {
        Employee employee = employeeService.searchEmployeeById(idEmployee);
        logger.info("Employee to edit: " + employee);
        model.put("employee", employee);
        return "edit"; // to edit.jsp
    }

}
















