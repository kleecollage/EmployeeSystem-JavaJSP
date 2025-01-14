<%-- URL's PATHS--%>
<c:url value="/" var="urlHome"/>
<c:url value="/add" var="urlAdd"/>

<div class="container">
    <nav class="navbar navbar-expand-lg bg-secondary" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="${urlHome}">Employees System</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="${urlHome}">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${urlAdd}">Add Employee</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>