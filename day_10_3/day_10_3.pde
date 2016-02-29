int x = 0;
int y = 0;
int speed = 5;
int state = 0;
void setup(){
  size(1000,1000);
}
void draw(){
  background(255);
  stroke(0);
  fill(random(255),random(255),random(255));
  rect(x,y,500,500);
  
  if(state == 0){
    x = x + speed;
    if(x > width - 500){
      x = width - 500;
      state = 1;
  }
 }else if (state == 1){
   y = y + speed;
   if ( y > height -500){
     y = height - 500;
     state = 2;
   }
}else if (state == 2){
  x = x - speed;
  if (x < 0){
    x = 0;
    state = 3;
  }
  }else if (state == 3){
    y = y - speed;
    if (y < 0){
      y = 0;
      state = 0;
    }
  }
}