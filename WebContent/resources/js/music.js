 var randInterval = 0;
 var playlist = ["acrossUniverse","allForChristmas","bestPart","blowers","chicken", "haveYourselfAMerryLittleChristmas", "iWishYouLove", "misty", "winterWonderland", "justTwoUs","greenGold","misty2","strasbourg","bestpart2","acrossUniverse2","iFallInLoveTooEasily","thinkboutchu","thanksnex","Baron","englishMan","Dodo", "howDeep"];
 var songTitle = ["우주를 건너", "All I Want For Christmas is You", "Best Part", "Blower's Daughter", "Chicken", "Have Yourself a Merry Little Christmas", "I Wish You Love", "Misty", "Winter Wonderland", "Just the Two of Us", "Green & Gold", "Misty (v.2)", "Strasbourg", "Best Part (v.2)", "우주를 건너 (v.2)", "I Fall in Love Too Easily", "Think Bout 'Chu", "Thank You, Next", "Red Baron", "Englishman in New York", "도도해", "How Deep is Your Love"];
 var index = Math.floor(Math.random()*playlist.length);
 document.getElementById("songTitle").innerHTML = songTitle[index];
 var myAudio = new Audio("resources/audio/" + playlist[index] + ".mp3");
 var titleDiv = document.getElementById("audio");
 
 
window.addEventListener('load', (event) => {
   titleDiv.appendChild(myAudio);
   playMusic();
   //Event Listener that will start a new song after a pause
   //of randomly determined length
   myAudio.addEventListener('ended', function(){setTimeout(function(){playMusic();}, getRandomInterval(2,2));}, false);
				
});

//Generates a random song, sets it attributes/properties, and 
//appends a file extension that works with the browser.

function getRandomSong(){
		var index = Math.floor(Math.random()*playlist.length);
    	var randSong = playlist[index];
    	document.getElementById("songTitle").innerHTML = songTitle[index];
    	
  
        	myAudio.src="resources/audio/" + randSong + ".mp3";
       
        myAudio.id="myAudio";
       	myAudio.volume=0.3;
        myAudio.load()
		myAudio.controls = true;
        myAudio.preload=false;
}

            //Sets a random interval for the setTimeout Function with the
            //'variation' parameter being a random amount of time in 
            //seconds, and the 'range' parameter being a set amount of time 
            //in seconds.
function getRandomInterval(variation, range){
       randInterval = Math.floor((Math.random()*1000*variation)+(1000*range)); 
       return randInterval;
}   

            //Gets a random song and plays that song.
function playMusic(){
                getRandomSong();
                myAudio.play();
}

/* code from https://stackoverflow.com/questions/22391933/javascript-function-to-autoplay-random-html-audio-after-delay */



