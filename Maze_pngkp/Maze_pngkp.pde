int x=170;
int y=315;
PImage maze;
float hit;
void setup(){
 size(322,322);
 maze=loadImage("maze.png");
}
void draw(){
  background(maze);
  hit=red(get(x,y));
  if(hit==0){
    x=170;
    y=315;
  }
  pushMatrix();
  translate(x,y);
  fill(random(255),random(255),random(255));
  ellipse(0,0,10,10);
  popMatrix();
  
  
  
}
void keyPressed(){
  if(key==CODED&&keyCode==UP){y--;y--;y--;y--;y--;}
  if(key==CODED&&keyCode==DOWN){y++;y++;y++;y++;y++;}
  if(key==CODED&&keyCode==LEFT){x--;x--;x--;x--;x--;}
  if(key==CODED&&keyCode==RIGHT){x++;x++;x++;x++;x++;}
}