<%@include file="/WEB-INF/view/template/header.jsp"%>



<div class="container">
    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card card-signin my-5">
                <div class="card-body">
                    <h3 class="card-title text-center">Sign In</h3>
                    
                    <c:if test="${not empty msg}">
                        <div class="msg">${msg}</div>
                    </c:if>

                   <form name="loginForm"  class="form-signin" action="<c:url value="/j_spring_security_check"/>" method="post">
                       <c:if test="${not empty error}">
                           <div class="error" style="color: red">${error}</div>
                       </c:if>

                    <div class="form-label-group">
                            <input type="text" name="username" id="username" class="form-control" placeholder="Username" required autofocus>
                            <label for="username">Username</label>
                        </div>

                        <div class="form-label-group">
                            <input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
                            <label for="password">Password</label>
                        </div>

                        <div class="custom-control custom-checkbox mb-3">
                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                            <label class="custom-control-label" for="customCheck1">Remember password</label>
                        </div>
                        <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
                        <hr class="my-4">

                        <div id="formFooter">
                            <a class="underlineHover" href="#">Forgot Password?</a>
                        </div>
                       <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

                   </form>
                </div>
            </div>
        </div>
    </div>
</div>



<%@include file="/WEB-INF/view/template/footer.jsp"%>
