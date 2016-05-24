int x =170;
int y = 315;
PImage maze;
float hit; // variable we use to sense rather or not we hit the edge of our maze, black wall
void setup(){
  size(322,322);
  maze = loadImage("maze.png");
}
void draw(){
  background(maze);
  hit = red(get(x,y));
  if(hit==0){
  x = 168;
  y = 315;}
  
  pushMatrix();
  translate(x,y); //move whatever we put in our push pop
  fill(255,0,0);
  ellipse(0,0,5,5);
  popMatrix();
}  

void keyPressed(){ 
  if(key==CODED&& keyCode==UP){ //if key is pressed and its the actual key on the keyboard is it the up key
  y--;
  } if(key==CODED&& keyCode==DOWN){ //if key is pressed and its the actual key on the keyboard is it the up key
  y++;
  }  if(key==CODED&& keyCode==LEFT){ //if key is pressed and its the actual key on the keyboard is it the up key
  x--;
  } if(key==CODED&& keyCode==RIGHT){ //if key is pressed and its the actual key on the keyboard is it the up key
  x++;
  }
}