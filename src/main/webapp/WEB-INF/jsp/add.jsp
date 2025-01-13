<%-- HEADER --%>
<%@ include file="commons/header.jsp" %>
<%-- TOP NAV BAR --%>
<%@ include file="commons/navigation.jsp" %>

<%-- ADD EMPLOYEE --%>
<div class="container">
    <div class="text-center" style="margin: 30px">
        <h3>Add New Employee</h3>
    </div>
    <form action="/employees/add" modelAttribute="employeeForm" method="post">
        <div class="mb-3">
            <label for="nameEmployee" class="form-label">Employee Name</label>
            <input type="text" class="form-control" id="nameEmployee" name="nameEmployee" required>
        </div>
        <div class="mb-3">
            <label for="department" class="form-label">Department</label>
            <input type="text" class="form-control" id="department" name="department">
        </div>
        <div class="mb-3">
            <label for="salary" class="form-label">Salary</label>
            <input type="number" step="any" class="form-control" id="salary" name="salary">
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-warning btn-sm me-3">Submit</button>
            <a href="/employees/" class="btn btn-danger btn-sm">Go Back</a>
        </div>
    </form>
</div>

<%-- FOOTER --%>
<%@ include file="commons/footer.jsp" %>