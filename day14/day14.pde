Car myCar; //declaring car object, is a gloabal variable




void setup () {
  size(640,360);
  myCar = new Car();
}

void draw () {
  background(255);
  myCar.display();
  myCar.move();
}

class Car {
  color c;
 float xpos;
 float ypos;
 float xspeed;
  
  
Car(){ //contructer, set variables 
c = color(175);
xpos = width/2;
ypos = height/2;
xspeed = 1;
}
void display(){ //function 
rectMode(CENTER);// draw the car in the center of the window
stroke(0); // black outline around the car 
rect(xpos,ypos,20,10); //make the car so that its a squre 
}
void move(){
  xpos = xpos + xspeed;
  if (xpos > width){
    xpos = 0;
  }
}
}