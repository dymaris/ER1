void setup(){
  size(200,200); //size of window 
}
void draw(){
  background(255); // blank sheet of paper
  stroke(0); //black stroke
  line(100,0,100,200);// line going vertical
  line(0,100,200,100);//line going horizontal
  
  noStroke(); // no outline on shape being drawn
  fill(0); // inside of the shape is black
  
  if(mouseX < 100 && mouseY < 100){ // we are on the top left quadrant 
 rect(0,0,100,100);

} else if(mouseX > 100 && mouseY < 100){  //"if nothing is happening then do this" is what this conditional is about
  rect(100,0,100,100);
}
  else if(mouseX > 100 && mouseY < 100){ 
    rect(0,100,100,100);
  }
  else if(mouseX > 100 && mouseY < 100){  
  rect(100,0,100,100);
  }
 
}