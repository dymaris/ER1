boolean button = false; 


int x = 50;

int y = 50;

int w = 100;

int h = 75;



void setup(){
  size(200,200);
}
  
  
void draw(){
  if(button){
    background(255,255,200); //background pale yelloe
  stroke(0); // black stroke
  } else {
    background(0);
    stroke(255);
  }
  fill(175);
  rect(x,y,w,h); // rectangle in the middle
    

} 

 void mousePressed(){ //mouse clicked the script is going to run
if(mouseX > x && mouseX < x+w && mouseY > y && mouseX < y+h){ //only works when you click in the box
  button = !button;
}
}