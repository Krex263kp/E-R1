float x = 500;
float y = 0;
float speed = 0;
float gravity = .1;

void setup(){
 size(1000,1000); 
}
void draw(){
  background(255);
  fill(random(255),random(255),random(255));
  stroke(0);
  rectMode(CENTER);
  rect(x,y,random(500),random(500));
  
  y = y+speed;
  speed = speed + gravity;
  
  if(y>height){
    speed = speed * -.85;
    y = height;
  }
  
  
  
  
  
  
  
  
  
  
  
}