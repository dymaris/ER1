Ball ball1;
Ball ball2;
Ball ball3;
Ball ball4;

float gravity = 0.1;

void setup(){
  size(200,200);
  ball1 = new Ball(50,0,26);
  ball2 = new Ball(61,random(200),55);
  ball3 = new Ball(91,random(200),67);
  ball4 = new Ball(116,random(200),19);
  
}
void draw(){
  background(255);
  ball1.display();
  ball1.update();
  ball2.display();
  ball2.update();
  ball3.display();
  ball3.update();
  ball4.display();
  ball4.update();
}