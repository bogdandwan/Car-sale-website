var uniqueId = 0;

var car1 = new Car (uniqueId++, "Alfa Romeo Giulia", 21500, 2018, 'Limuzina', true, 2143 , 173.765, '132kw(179ks)', 'Manuelni', '4/5', 5,'./img/Alfa-Romeo-Giulia-render-01.jpg');
var car2 = new Car (uniqueId++,"Alfa Romeo Giulia",19850,2017,'Limuzina',true,2143,206.500,'110kW(150KS)','Automatski','4/5',5,'./img/Alfa-Romeo-Giulia-2023-Portada-2048x1229.jpg');
var car3 = new Car (uniqueId++,"Alfa Romeo Stelvio Q4",27200,2017,'Dzip/SUV',true,2143,216.358,'154kW(209KS)','Automatski','4/5',5,'./img/alfa-romeo-stelvio-6407bd3600f3d.jpg');

var cars = [car1, car2, car3];

function appendCar(carSaleDiv, car) {
	var divCarSale = document.createElement('div');
	divCarSale.classList.add("row", "car-sale");
	divCarSale.id = car.id;
	
	var divCol4 = document.createElement('div');
	divCol4.classList.add("col-sm-4");
	divCol4.innerHTML = '<img class="car-img" src="'+car.img+'">';
	divCarSale.appendChild(divCol4);
	carSaleDiv.appendChild(divCarSale);
	
	var divCol8 = document.createElement('div');
	divCol8.classList.add("col-sm-8");
	var divCarNamePrice = document.createElement('div');
	divCarNamePrice.classList.add("car-name-price");
	
	divCarNamePrice.innerHTML = `<span style="float: right;"><i id="`+car.id+`_delete" 
	class="fas fa-trash"></i></span>
	<h2>`+car.model+`</h2>
	<br>
	<span>`+car.price+`€</span>`
	
	divCol8.appendChild(divCarNamePrice);
	divCarSale.appendChild(divCol8);
	document.getElementById(car.id+'_delete').addEventListener("click", function(e) {
		let deleteId = e.target.id.split('_')[0];
		document.getElementById(deleteId).remove();
	})
	
	var row=document.createElement('div');
	row.classList.add("row");
	row.style.marginLeft='5%';
	
	var fuel = car.diesel ? 'Diesel':'Beonzin';
	
	var carInfo1 = document.createElement('div');
	carInfo1.classList.add("col-sm-4","car-info");
	carInfo1.innerHTML=`
		<span>`+car.year+`.`+car.type+`</span>
		<hr>
		<span>`+fuel+`|`+car.volume+`cm^3</span>`;
	
	row.appendChild(carInfo1);
	
	var carInfo2=document.createElement('div');
	carInfo2.classList.add("col-sm-4","car-info");
	carInfo2.innerHTML=`
		<span>`+Number(car.km).toFixed(3)+`</span>
		<hr>
		<span>`+car.power+`</span>`;
		
	row.appendChild(carInfo2);
	var carInfo3=document.createElement('div');
	carInfo3.classList.add("col-sm-4","car-info");
	carInfo3.innerHTML=`
		<span>`+car.transmission+`</span>
		<hr>
		<span>`+car.seats+`vrata,`+car.dors+`sedista</span>`;
		
	row.appendChild(carInfo3);
	divCol8.appendChild(row);
	
}

var carSale = document.getElementById('car-sale-holder');
cars.forEach(car => appendCar(carSale, car));

disabled = true;

document.querySelectorAll('input').forEach(element => element.disabled=disabled);

document.getElementById('add-new-button').addEventListener("click",function() {
	disabled=!disabled;
	document.querySelectorAll('input').forEach(element => element.disabled = disabled);
	document.getElementById('input-form').scrollIntoView();
	
	document.getElementById('model').value = 'Alfa Romeo 147';
	document.getElementById('price').value = 2600;
	document.getElementById('year').value = 2008;
	document.getElementById('type').value = 'Hecbek';
	document.getElementById('diesel').value = true;
	document.getElementById('volume').value = 1900;
	document.getElementById('km').value = 258000;
	document.getElementById('power').value = '88kW(120KS)';
	document.getElementById('transmission').value = 'Manuelni';
	document.getElementById('dors').value = '2/3';
	document.getElementById('seats').value = '5';
	document.getElementById('img').value = './img/alfa-147-tuning.jpg';
})

function addNewCar() {
	let model = document.getElementById('model').value;
	let price = document.getElementById('price').value;
	let year = document.getElementById('year').value;
	let type = document.getElementById('type').value;
	let diesel = document.getElementById('diesel').value;
	let volume = document.getElementById('volume').value;
	let km = document.getElementById('km').value;
	let power = document.getElementById('power').value;
	let transmission = document.getElementById('transmission').value;
	let dors = document.getElementById('dors').value;
	let seats = document.getElementById('seats').value;
	let img = document.getElementById('img').value;
	
	let car = new Car(this.uniqueId++, model, price, year, type, diesel, volume, km,
	power, transmission, dors, seats, img);
	var carSaleDiv = document.getElementById('car-sale-holder');
	appendCar(carSaleDiv,car);
}

document.getElementById('submit').addEventListener("click",function() {
	addNewCar(uniqueId);
});

document.getElementById('back-to-top').addEventListener("click", function() {
	document.getElementById('header-row').scrollIntoView();
})