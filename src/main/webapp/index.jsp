<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPEhtml>
<html style="font-size:16px;"lang="en"class="u-responsive-lg">
<head>
<meta name="viewport"content="width=device-width,initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords"content="carsale,carmarket">
<title>Car Sale</title>
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.6.2/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"rel="stylesheet">
</head>
<body>

	<div class="container">
		<div id="header-row"class="row">
			<div class="col-sm-3">
				<img id="logo" src="https://assets.heycar.co.uk/image/upload/application_assets/frontend_static/26.135.0/images/nissan_promo_mobile.webp">
			</div>
			<div class="col-sm-6">
				<h1 id="site-header">CAR SALES</h1>
				<div class="row">
					<div id="social"class="col-sm-8 offset-sm-2">
						<a href=""><i class="fab fa-facebook-square"style="color:grey;"></i></a>
						&emsp;
						&emsp;
						<a href=""><i class="fab fa-instagram"style="color:grey;"></i></a>
						&emsp;
						&emsp;
						<a href=""><i class="fab fa-twitter-square"style="color:grey;"></i></a>
					</div>
				</div>
			</div>
			<div id="add-new-column"class="col-sm-3">
				<button id="add-new-button"class="btn btn-light">Add New</button>
			</div>
		</div>
	</div>
	
	<main>
		<div class="row" style="margin-top:5%;">
			<div id="car-sale-holder" class="col-sm-8 offset-sm-2">
				<div class="row car-sale">
					<div class="col-sm-4">
						<img class="car-img" src="https://www.actualidadmotor.com/wp-content/uploads/2022/02/Alfa-Romeo-Giulia-2023-Portada-2048x1229.jpg">
					</div>
					<div class="col-sm-8">
						<div class="car-name-price">
							<span style="float:right;"><i class="fas fa-trash"></i></span>
							<h2>Alfa Romeo Giulia</h2>
							<br>
							<span>21.500€</span>
						</div>
						<div class="row"style="margin-left:5%;">
							<div class="col-sm-4 car-info">
								<span>2018.Limuzina</span>
								<hr>
								<span>Dizel|2143cm^3</span>
							</div>
							<div class="col-sm-4 car-info">
								<span>173.765km</span>
								<hr>
								<span>132kw(179ks)</span>
							</div>
							<div class="col-sm-4 car-info">
								<span>Manuelni</span>
								<hr>
								<span>4/5vrata,5sedista</span>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row car-sale">
					<div class="col-sm-4">
						<img class="car-img" src="https://www.carandmotor.gr/sites/default/files/styles/horizontal_rectangle/public/2022-11/Alfa-Romeo-Giulia-render-01.jpg?itok=F0gEJGOB">
					</div>
					<div class="col-sm-8">
						<div class="car-name-price">
							<span style="float:right;"><i class="fas fa-trash"></i></span>
							<h2>Alfa Romeo Giulia</h2>
							<br>
							<span>19.850€</span>
						</div>
						<div class="row"style="margin-left:5%;">
							<div class="col-sm-4 car-info">
								<span>2017.Limuzina</span>
								<hr>
								<span>Dizel|2143cm^3</span>
							</div>
							<div class="col-sm-4 car-info">
								<span>206.500km</span>
								<hr>
								<span>110kw(150ks)</span>
							</div>
							<div class="col-sm-4 car-info">
								<span>Automatski</span>
								<hr>
								<span>4/5vrata,5sedista</span>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row car-sale">
					<div class="col-sm-4">
						<img class="car-img" src="https://static.motor.es/fotos-jato/alfa-romeo/uploads/alfa-romeo-stelvio-6407bd3600f3d.jpg">
					</div>
					<div class="col-sm-8">
						<div class="car-name-price">
							<span style="float:right;"><i class="fas fa-trash"></i></span>
							<h2>Alfa Romeo Stelvio Q4</h2>
							<br>
							<span>27.200€</span>
						</div>
						<div class="row"style="margin-left:5%;">
							<div class="col-sm-4 car-info">
								<span>2017. Dzip/SUV</span>
								<hr>
								<span>Dizel|2143cm^3</span>
							</div>
							<div class="col-sm-4 car-info">
								<span>216.358km</span>
								<hr>
								<span>110kw(150ks)</span>
							</div>
							<div class="col-sm-4 car-info">
								<span>Automatski</span>
								<hr>
								<span>4/5vrata,5sedista</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	
	<section id="input-form">
		<div class="row">
			<div class="col-sm-10 offset-sm-1">
			<hr>
			<form action="#" method="get">
				<label for="fname">Model:</label>
				<input type="text" id="model" name="model">
				&ensp;
				<label for="lname">Price:</label>
				<input type="text" id="price" name="price">
				&ensp;
				<label for="fname">Year:</label>
				<input type="text" id="year" name="year">
				&ensp;
				<label for="lname">Type:</label>
				<input type="text" id="type" name="type">
				&ensp;
				<input type="checkbox" id="diesel" name="diesel">
				<label for="diesel">Diesel</label>
				<br>
				<br>
				<label for="fname">Volume:</label>
				<input type="text" id="volume" name="volume">
				&ensp;
				<label for="lname">KM:</label>
				<input type="text" id="km" name="km">
				&ensp;
				<label for="fname">Power:</label>
				<input type="text" id="power" name="power">
				&ensp;
				<label for="lname">Transmission:</label>
				<input type="text" id="transmission" name="transmission">
				<br>
				<br>
				<label for="fname">Dors:</label>
				<input type="text" id="dors" name="dors">
				&ensp;
				<label for="lname">Seats:</label>
				<input type="text" id="seats" name="seats">
				&ensp;
				<label for="lname">img:</label>
				<input type="text" id="img" name="img">
				&ensp;
				&ensp;
				<input id="submit" type="button" value="Submit">
			</form>
			<hr>
			</div>
		</div>
	</section>
	
	<footer>
		<div class="row">
			<div class="col-sm-2 offset-sm-5" style="text-align:center;">
				<span id="back-to-top">Back to top</span>
				<hr>
			</div>
		</div>
	</footer>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="./script/Car.js"></script>
	<script src="./script/script.js"></script>
</body>
</html>