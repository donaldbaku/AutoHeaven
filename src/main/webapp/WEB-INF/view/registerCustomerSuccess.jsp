<%@include file="/WEB-INF/view/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron bg-info">
                <div class="container">
                    <h1>Customer registered successfully</h1>
                </div>
            </div>
        </section>

        <section class="container">

            <a href="<c:url value="/product/productList"/>" class="btn btn-success">Products</a>

        </section>


    </div>
</div>









<script src="<c:url value="//resources/js/controller.js"/>"></script>
<%@include file="/WEB-INF/view/template/footer.jsp"%>
