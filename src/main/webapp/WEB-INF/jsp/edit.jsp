<%-- HEADER --%>
<%@ include file="commons/header.jsp" %>
<%-- TOP NAV BAR --%>
<%@ include file="commons/navigation.jsp" %>
<%-- ADD EMPLOYEE --%>
<div class="container">
    <div class="text-center" style="margin: 30px">
        <h3>Update Employee</h3>
    </div>
    <form action="${urlEdit}" modelAttribute="employeeForm" method="post">
        <input type="hidden" name="idEmployee" value="${employee.idEmployee}">
        <div class="mb-3">
            <label for="nameEmployee" class="form-label">Employee Name</label>
            <input type="text" class="form-control" id="nameEmployee" name="nameEmployee" required
                   value="${employee.nameEmployee}">
        </div>
        <div class="mb-3">
            <label for="department" class="form-label">Department</label>
            <input type="text" class="form-control" id="department" name="department"
                   value="${employee.department}">
        </div>
        <div class="mb-3">
            <label for="salary" class="form-label">Salary</label>
            <input type="number" step="any" class="form-control" id="salary" name="salary"
                   value=${employee.salary}>
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-warning btn-sm me-3">Submit</button>
            <a href="${urlHome}" class="btn btn-danger btn-sm">Go Back</a>
        </div>
    </form>
</div>
<%-- FOOTER --%>
<%@ include file="commons/footer.jsp" %>