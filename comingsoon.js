

var myTimer = setInterval(letterSwitch, 200);
timer();

function letterSwitch(){

	var normal_text = ["C","O","M","I","N","G"," ","S","O","O","N"];
	var haxxor_text = ["c","0","m","1","n","6","_","5","0","0","n"]
	var ran = Math.floor(Math.random() * 18);

	if(ran < normal_text.length) {
		if(document.getElementById(ran).innerHTML === normal_text[ran]) {
			document.getElementById(ran).innerHTML = haxxor_text[ran];
		}
		else {
			document.getElementById(ran).innerHTML = normal_text[ran];			
		}
	}
}
