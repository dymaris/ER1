//array of buttons
Button[] button = new Button[6];

void setup(){
  size(600,200);
  for(int i=0; i < button.length;i++){
    button[i] = new Button(i*100+25,height/2-25,50,50);
  }
  
}

void draw(){
  background(0);
  for(int i=0;i<button.length;i++){
    button[i].display();
  }
}

void mousePressed(){// sensed when the moused is clicked
for(int i=0;i<button.length;i++){
button[i].click(mouseX,mouseY);
}
}