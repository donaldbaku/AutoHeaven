<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/view/template/header.jsp"%>

	<main role="main">

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="first-slide" src="<c:url value="//resources/images/audi_r8.jpg" />" alt="First slide">
					<div class="container">
						<div class="carousel-caption text-left">
							<h1>Products by top european brands.</h1>
							<p>With it's naturally aspirated V10 engine you can truly enjoy the proper sound and speed the Audi R8 has.</p>
						</div>
					</div>
				</div>


				<div class="carousel-item">
					<img class="second-slide" src="<c:url value="//resources/images/rolls_royce.jpg" />" alt="Second slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>Luxury at it's finest.</h1>
							<p>The Rolls Royce Phantom is a pleasure to live with. We are very proud to have it in our inventory</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img class="third-slide" src="<c:url value="//resources/images/mercedes_amg.jpg" />" alt="Third slide">
					<div class="container">
						<div class="carousel-caption text-right">
							<h1>Reliability is a must have when buying a car.</h1>
							<p>That's why we chose to have Mercedes-Benz as one of our top suppliers.</p>
						</div>
					</div>
				</div>
			</div>

			<a class="carousel-control-prev" href="#myCarousel" role="button"
				data-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#myCarousel" role="button"
				data-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>



		<!--===================================================================-->

		<!-- START THE FEATURETTES -->

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-6">
				<h2 class="featurette-heading">
					Four electric engines. <span class="text-muted">It'll
						blow your mind.</span>
				</h2>
				<p class="lead">Donec ullamcorper nulla non metus auctor
					fringilla. Vestibulum id ligula porta felis euismod semper.
					Praesent commodo cursus magna, vel scelerisque nisl consectetur.
					Fusce dapibus, tellus ac cursus commodo.</p>
			</div>
			<div class="col-md-6">
				<img class="featurette-image img-fluid mx-auto"
					src="<c:url value="//resources/images/audi-etron.jpg" />" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-6 order-md-2">
				<h2 class="featurette-heading">
					Top of the line technology. <span class="text-muted">See for
						yourself.</span>
				</h2>
				<p class="lead">Donec ullamcorper nulla non metus auctor
					fringilla. Vestibulum id ligula porta felis euismod semper.
					Praesent commodo cursus magna, vel scelerisque nisl consectetur.
					Fusce dapibus, tellus ac cursus commodo.</p>
			</div>
			<div class="col-md-6 order-md-1">
				<img class="featurette-image"
					src="<c:url value="//resources/images/bmw_m4_m.jpg" />" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-6">
				<h2 class="featurette-heading">
					There's not a place this SUV can't go to. <span class="text-muted">Checkmate.</span>
				</h2>
				<p class="lead">Donec ullamcorper nulla non metus auctor
					fringilla. Vestibulum id ligula porta felis euismod semper.
					Praesent commodo cursus magna, vel scelerisque nisl consectetur.
					Fusce dapibus, tellus ac cursus commodo.</p>
			</div>
			<div class="col-md-6">
				<img class="featurette-image img-fluid mx-auto"
					src="<c:url value="//resources/images/ford_r.jpg" />" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<!-- /END THE FEATURETTES -->


</main>

<%@include file="/WEB-INF/view/template/footer.jsp"%>
