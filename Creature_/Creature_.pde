void setup(){
  size(200,200);
  
}

void draw(){
  background(175,100,220);

  ellipseMode(CENTER);
  rectMode(CENTER);
  
  translate(100,100);
  
  
  //body
  stroke(0); //outline
  fill(0);
  rect(0,0,20,80);
  
  
  //head
 
  fill(234,34,11);
 rect(0,0,75,55,7);

  
  
  //eyes
  fill(0);
  ellipse(-19,-30,16,32);
  ellipse(19,-30,16,32);
  
  //legs
  stroke(0);
  line(-10,20,-20,60);
  line(10,20,20,60);
  fill(20,204,90);
  rect(0,0,20,20);
}