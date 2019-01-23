function check() {
	var id = document.getElementById("id").value;
	var idSpan = document.getElementById("idSpan");
	if(id.length<8){
		idSpan.innerHTML = "아이디는 8글자 이상이어야 합니다";
	}  
	else {
		idSpan.innerHTML = "OK";
		document.getElementById("idSpan").style= "color: green"
	}
	
}