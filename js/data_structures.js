var colors = ["Blue", "Aquamarine", "Seafoam Green", "Gold"];

var horses = ["Ed", "American Pharoe", "Secretary", "Buster"];

colors.push("Green");

horses.push("Ted");

//creating empty Object
var horse_hash = {};

if (colors.length == horses.length){
for (var i = 0; i < colors.length; i++) {
	horse_hash[horses[i]] = colors[i];
} 
}

console.log(horse_hash)

function Car(horsepower, price, brand){
	
	this.horsepower = horsepower;
	this.price = price;
	this.brand = brand;
	
	this.honk = function() { console.log("HOOOONNNKKK");};
	
}

var aCar = new Car(150, 12000, "Ford Focus");
console.log(aCar);
aCar.honk();

var anotherCar = new Car(200, 20000, "Toyota");
console.log(anotherCar);
anotherCar.honk();