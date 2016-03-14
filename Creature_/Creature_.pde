
float y = 200;
float speed = 0;
float gravity = 0.01;





void setup(){
  size(640,360);
  
}

void draw(){
  background(175,110,300);

  ellipseMode(CENTER);
  rectMode(CENTER);
  
  y = y + speed;
  speed = speed + gravity;
  if(y > 300){
  speed = speed * -0.95;
  y = 300;
  }
  translate(width/2,y);
  
  
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