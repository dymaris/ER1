void setup(){ //setup function runs once
size (400,500); //sets windows size
}
void draw (){ //function over and over
  
  if(mousePressed){ //conditional
     background(random(255),random(255),random(255));
  delay(500); //pause a sec
  }
}