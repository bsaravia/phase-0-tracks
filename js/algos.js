// basic design for longestWord:
// -take in array
// -loop through array, recording length of each element in new array
// -finding max of new array and corresponding index
// -returning element of original array corresponding to that max

// basic design for comparison:
// -take in 2 objects
// -collect their keys in 2 arrays
// -loop through one of the arrays
// -nested loop for second array
// -check for each element if an index exists for both
// -if so, return true
// -otherwise, at end of function, return false

// basic design for randomData:
// -take in number
// -create alphabet string
// -loop 0 to input
// -nested loop 0 to random number 1-10
// -add letters to a string
// -add strings to array
// -return array


function longestWord(wordsArray) {
    lengthArray = [];
    for (var i = 0; i < wordsArray.length ; i++) {
    	lengthArray[i] = wordsArray[i].length;
    }
		max = Math.max.apply(Math,lengthArray);
		var index = lengthArray.indexOf(max);
		var longest = wordsArray[index];
    return longest;
}	



function comparison(object1,object2) {
	var obj1 = Object.keys(object1);
	var obj2 = Object.keys(object2);
	
	for (var i = 0; i < obj1.length ; i++) {
			if (obj2.indexOf(obj1[i]) > -1) {
	    		return true;
			}
	}	
    return false;
}

function randomData(num) {
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	var numArray = []
	
	for (var i = 0; i < num; i++) {
		var  numLetters = Math.floor(Math.random() * 10) + 1;
		var text = "";
    	for (var j = 0; j < numLetters; j++) {
			text += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
    	}
    	numArray[i] = text;
    }
	return numArray;
}

//driver code

console.log(longestWord(["one","two","three","four","g", "helloooooo"]));

console.log(longestWord(["long phrase","longest phrase","longer phrase"]));

console.log(longestWord(["","         "," g g g g g g g g "]));



console.log(comparison({name: "Steven", age: 54},{name: "Tamir", age: 54}));

console.log(comparison({names: "Steven", age: 54},{name: "Tamir", ages: 54}));


for (var i = 0; i < 10; i++) {
	var randomArray = randomData(5);
	console.log(randomArray);
	console.log(longestWord(randomArray));
}