
size(200,200);// size of window

background(255); // color of background fresh sheet of paper

int y = 80;

int x = 50;

int spacing = 10; // spacing of each line 

int len = 20; //length of each line 

int xStop = 150; // knows where x stops 

stroke(0);

while ( x <= xStop){ //when we get to 150 its going to stop our while loop

line ( x,y,x,y + len);

x = x + spacing; 

}