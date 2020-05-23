<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@include file="/WEB-INF/view/template/header.jsp"%>



<!--===================================================================-->

<main>

    <section class="jumbotron text-center" style="background-color: black;">
        <div class="container">
            <h1 class="jumbotron-heading" style="color: cyan;">Search Results</h1>
                <a href="<c:url value="/product/productList"/>" class="btn btn-success btn-lg">Go Back</a>
            </p>
        </div>
    </section>



    <!--===================================================================-->


    <div class="album py-5 bg-dark">
        <div class="container">
            <div class="row">
                <c:forEach items="${searchResults}" var="product">
                    <div class="col-md-4">
                        <div class="card mb-4 box-shadow">
                            <img class="card-img-top img-fluid img-thumbnail rounded"
                                 src="<c:url value="/resources/images/${product.productId}.png" />"
                                 alt="Card image cap">
                            <div class="card-body">

                                <h3 class="card-text">${product.productName }</h3>
                                <p class="card-text">${product.productDescription }</p>
                                <p class="card-text">Price: ${product.productPrice } EUR</p>

                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group justify-content-center">

                                        <a
                                                href="<spring:url value="/product/viewProduct/${product.productId}" />">
                                            <button
                                                    type="button" class="btn btn-success btn-block">View
                                            </button>
                                        </a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </ul>
                </c:forEach>
            </div>
        </div>
    </div>

</main>

<%@include file="/WEB-INF/view/template/footer.jsp"%>
