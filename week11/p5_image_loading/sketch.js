//demo for image loading in p5.js

//if using p5.js editor, simply place assets into project folder 
//if using external editor + browser, see tutorial on setting up a server: https://github.com/processing/p5.js/wiki/Local-server


//preload external assets with preload() called before setup()

function preload(){
	img= loadImage("tree.png");
}


function setup() {
createCanvas (displayWidth, displayHeight);
background(0);
}

function draw() {
	image(img,0,0);
	image (img, mouseX, mouseY, displayWidth/10, displayHeight/10);
}
