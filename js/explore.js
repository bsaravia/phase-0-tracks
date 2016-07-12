// Pseudocode for reverse function:

// take a string as a parameter and determines its length x
// for each value from x-1 to 0
// print each letter using this backwards counter 



function reverse(str) {
	var reversedString = "";
	
	for (var i = str.length-1; i >=0; i--) {
		reversedString += str[i];
	}
	
	return reversedString;

}


var hello = reverse("hello");

if (1==1) {
	console.log(hello);
}