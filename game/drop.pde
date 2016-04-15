class Drop{
  float x,y;
  float speed;
  color c;
  float r;
  boolean finished=false;
  
  Drop(){
    r=16;
    y=-r*4;
    x=random(width);
    speed=random(1,10);
    c=color(random(255),random(255),random(255));
  }
  void move(){
    y+=speed;
    
  }
  void display(){
    fill(c);
    noStroke();
    for(int i=2;i<r;i++){
      fill(random(255),random(255),random(255));
      ellipse(x,y+i*4,i*2,i*2);
    }
  }boolean reachedBottom(){
    if(y>height+r*4){return true;}else{return false;}
  }
//void caught(){
//  speed=0;
//y=-1000;
//}
void finished(){
  finished=true;}
  

}