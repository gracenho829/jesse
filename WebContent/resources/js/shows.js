function expand(string){
	var show = document.getElementById(string);
	console.log(show);
	var show1 = document.getElementById('merryChristmas');
	var show2 = document.getElementById('fallInLove');
	var show3 = document.getElementById('today');
	document.getElementsByClassName('shows')[0].style.display = 'none';
	switch (string){
		case 'merryChristmas': 
			show1.style.display = 'block';
			show2.style.display = 'none';
			show3.style.display = 'none';
			break;
		case 'fallInLove':
			show1.style.display = 'none';
			show2.style.display = 'block';
			show3.style.display = 'none';
			break;
		case 'today':
			show1.style.display = 'none';
			show2.style.display = 'none';
			show3.style.display = 'block';
			
		
	}
	
}