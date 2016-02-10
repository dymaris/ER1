int bRect = 20;
int bRect2 = 500;
int rQuad = 255;
int tCircle = 80;

//drawing order

void setup(){ //runs once at start up
size(600,650);
}

void draw(){
  background(255); //set background white
  
  //black rectangle 
  fill(0); //color within the next shape
  rectMode(CORNER);// the rectangle is at the corner
  noStroke(); //no outline
  rect(bRect,bRect,bRect2,330); // the what to type to make the rectangle
  
  //red quad
  stroke(rQuad,0,0); //red outline color
  noFill();// outline thickness
  quad(300,150,100,350,300,550,500,350); //what to type to make the quad
  //quad (x1,y1,x2,y2,x3,y3,x4,y4)
  
  //top circle
  fill(255); //fill white
  noStroke(); //no outline
  ellipse(300,150,tCircle,tCircle); //our first circle
  
  //left circle
  fill(0,255,0); //4th visual transparency 
  noStroke(); // there is no stroke
  ellipse(100,350,80,80);//what to type to make the circle
  
  //right circle
  noFill(); // no fill in the circle
  strokeWeight(10); // the thickness of the circle
  stroke(0,0,255); //R,G,B
  ellipse(500,350,80,80); // what you type to make the circle
  
  //triangle
  fill(255,200); // filling is white
  strokeWeight(1); // the thickness of the line is 1
  triangle(300,440,140,600,460,600); // the measurements to make a triangle
  //tirangle(x1,y1,x2,y2,x3,y3)
  
  //bottom rectangle
  fill(255);// white fill
  stroke(0,0,255); // white stroke
  rectMode(CENTER); // where the rectangle is placed
  rect(300,600,10,10);// the rectangle itself
  
 //line between two colors
 stroke(238,23,250); // color of stroke magenta
 strokeWeight(3);// stroke thickness is 3
 line(300,150,300,600); // measurement to line
 
 //arc
 stroke(0);//stroke is black
 noFill();// no filling
 strokeWeight(1);// stroke thickness is 1
 arc(500,550,400,400,PI,PI+HALF_PI);
 //(a,b,c,d,start,stop)
 
 //point
 stroke(255,0,0); // stroke is white
 strokeWeight(3); // thickness of point is 3
 point(500,550);// point size
 
  
}