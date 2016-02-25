
size(640,360); // size of window

background(255); // white background, fresh sheet of paper 

int y = 80; //vertical location of each line

int spacing = 10; // space between each line 

int len = 20; // lenth of each line



for(int x = 50; x <= 150; x += spacing){

line(x,y,x,y + len);

}