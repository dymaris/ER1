int bRect = 20;
int creative = 500;
int fun = 255;
int ER = 80;

//drawing order

void setup(){ //runs once at start up
size(600,650); // size of window
}

void draw(){
  background(fun); //set background white
  
  //black rectangle 
  fill(0); //color within the next shape
  rectMode(CORNER);// the rectangle is at the corner
  noStroke(); //no outline
  rect(bRect,bRect,creative,330); // the what to type to make the rectangle
  
  //red quad
  stroke(fun,0,0); //red outline color
  noFill();// outline thickness
  quad(300,150,100,350,300,550,creative,350); //what to type to make the quad
  //quad (x1,y1,x2,y2,x3,y3,x4,y4)
  
  //top circle
  fill(fun); //fill white
  noStroke(); //no outline
  ellipse(300,150,ER,ER); //our first circle
  
  //left circle
  fill(0,fun,0); //4th visual transparency 
  noStroke(); // there is no stroke
  ellipse(100,350,ER,ER);//what to type to make the circle
  
  //right circle
  noFill(); // no fill in the circle
  strokeWeight(10); // the thickness of the circle
  stroke(0,0,fun); //R,G,B
  ellipse(creative,350,ER,ER); // what you type to make the circle
  
  //triangle
  fill(255,200); // filling is white
  strokeWeight(1); // the thickness of the line is 1
  triangle(300,440,140,600,460,600); // the measurements to make a triangle
  //tirangle(x1,y1,x2,y2,x3,y3)
  
  //bottom rectangle
  fill(fun);// white fill
  stroke(0,0,fun); // white stroke
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
 arc(creative,550,400,400,PI,PI+HALF_PI);
 //(a,b,c,d,start,stop)
 
 //point
 stroke(fun,0,0); // stroke is white
 strokeWeight(3); // thickness of point is 3
 point(creative,550);// point size
 
  
}