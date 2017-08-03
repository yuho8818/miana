/**
 * 
 */

function changeSearch(type){
	if(type=="Baidu"){
		document.getElementById("search_Type").innerHTML = "百度一下";
	}else if(type=="Google"){
		document.getElementById("search_Type").innerHTML = "谷歌搜索";
	}
	
	document.getElementById("search_Type").value = type;
	document.getElementById("type_recorde").value = type;
	document.getElementById("example-navbar-collapse").className="navbar-collapse collapse";
	
}

window.onload=function(){
	var width = window.screen.width;
	document.getElementById("screen_width").value = window.screen.width;
	if(width>600){
		document.getElementById("back_img").src="pic/45.jpg";
	}
	else{
		document.getElementById("back_img").src="pic/y.jpg";
	}
}