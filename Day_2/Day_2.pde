void setup(){ //runs once 
size(200,200);} //window size

void draw(){ //runs over and over
  background(100); // fresh sheet of paper
  stroke(255,0,0); //shape outline color
  fill(0); //shape fill color
  rectMode(CENTER); //drawing rect from center
  rect(width/2,height/2,mouseX,mouseY); 
  line(0,0,mouseX,mouseY); // drawing a line
  //line(x1,y1,x2,y2) start then end
  //println("You pressed"+ key +" "+ keyCode);
}
void mousePressed(){ //if mouse pressed do this
  println(mouseX +"," + mouseY);
}