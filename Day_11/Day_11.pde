//day 11 mapping values 

void setup(){
  size(200,200);
  noStroke();
  
}

void draw(){
  background(175);
  float c1 = map(mouseX,0,width,0,255); //equal to what we are mapping
  fill(c1);
  println(mouseX);
  ellipse(100,100,50,50);
  float x1 = map(mouseX,0,width,50,150);
   float y1 = map(mouseY,0,width,100,200);
  ellipse(x1,y1,25,34);
  
}