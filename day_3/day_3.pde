int stroke = 30;
int scolor = 8;

void setup(){
  size(400,400); // size of the window
  background(240); //background color (white)
}
  
void draw(){
  stroke(scolor); //line color
  strokeWeight(stroke);
  if (mousePressed);{// on click do this
  line(pmouseX,pmouseY,mouseX,mouseY);
  // draw a line, last position to current pos. 
  }
}
void keyPressed(){
  if(keyCode ==UP){ // when up key is pressed 
    stroke++; // inrecent stroke
  }
   if(keyCode ==DOWN){ // when down key is pressed
  }
  stroke++; //decrecent stroke
    if(keyCode == RIGHT){ // when left key is pressed 
    scolor++; // inrecent scolor
  }
   if(keyCode == LEFT){ // when left key is pressed
  }
  scolor++; //decrecent scolor
  }