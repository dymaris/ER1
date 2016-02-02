int circleX = 0; //declare variable and assigned value to cirlce
int circleY = 100; //declare variable and assigned variable to circle
void setup(){ //run setup once 
  size(200,200); //size of screen
}
void draw(){
  background(255);// background color
  stroke(0); //circle outline color
  fill(175); //circle inside color 
  ellipse(circleX,circleY,75,50); // circle
  //ellipse(X position,Y position,radius X, radius Y)
  
  //circleX = circleX + 1; // 
  circleX ++; // 
}