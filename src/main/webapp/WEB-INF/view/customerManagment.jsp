<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>

<section class="jumbotron text-center"
         style="background-color: black; padding: 10px;">
    <div class="container">
        <h1 class="jumbotron-heading" style="color: cyan;">Customer Managment Section</h1>
        <p class="text-muted">Here we can view the details of existing customers</p>
    </div>
</section>
<div class="container-wrapper">
    <div class="container">

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Username</th>
                <th>Enabled</th>

            </tr>
            </thead>
            <c:forEach items="${customerList}" var="customer">
                <tr  style="color: white">
                    <td>${customer.customerName}</td>
                    <td>${customer.customerEmail}</td>
                    <td>${customer.customerPhone}</td>
                    <td>${customer.customerUsername}</td>
                    <td>${customer.enabled}</td>
                </tr>
            </c:forEach>
        </table>

        <%@include file="/WEB-INF/view/template/footer.jsp" %>
