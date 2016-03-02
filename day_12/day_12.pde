boolean spin = false; 
float angle = .1; 
int x = 50;
int y = 50;

void setup(){
  size(400,400); //size of window
}


void draw(){
  background(55); // background dark grey color
  fill(#D36713); // the fill of shapes are a dark organge
  noStroke(); // no outline

  if(spin == false){ 
    rect(x,y,30,30); // small rectangle
    ellipse(200,200,x,y); // small circle
    
  }
  if(mousePressed){ //if the mouse is pressed do what follows
  if(mouseX > x && mouseX < 80 && mouseY > y && mouseY < 80){ //we want it to sense when its on the left or right of the rectangle
 
 
 pushMatrix(); //any sort of tranformation that happens stays between the push and pop matrix. just isolation, keeps tramforms between matrix. 
 translate(65,65);
rotate(angle); //rotating our next object at its angle
 rect(0,0,30,30);
 popMatrix();// ends isolation

angle += .10; // determines how fast the rectangle is rotating at its angle

ellipse(200,200,x,y);

spin=true; //rotate the thing at an angle

}

}else spin= false;

} 