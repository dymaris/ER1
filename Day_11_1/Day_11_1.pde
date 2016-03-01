//Gravity
float x = 320;
float y = 0;
float speed = 0;
float gravity = 0.1;

void setup(){
  size(640,360);
  
}




void draw(){
  background(255); // fresh white sheet 
  fill(175); // greyish color filling
  stroke(0); // outline will be black
  rectMode(CENTER); //drawing the shape from the center
  rect(x,y,10,10); // half of rectangle
  //drop bouncy box
 y = y + speed; //some movement
 speed = speed + gravity;
 //reverse speed when we reach the bottom of window
 if(y > height){ //if y is greater height 
 speed = speed * -0.95; // lower the number is the square is going to decrese in height in every bounce
 }
}