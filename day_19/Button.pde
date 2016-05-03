class Button{
  //size and location
  float x;
  float y;
  float w;
  float h;
  //on or off?
  boolean on;
  Button(float x_,float y_,float w_, float h_){
    x=x_;
    y=y_;
    w=w_;
    h=h_;
    on=false;//starts off
  }
  void click(int mx,int my){
    if(mx>x&&mx<x+w&&my>y&&my<y+h){
      on=!on;
    }}
    void display(){
      rectMode(CORNER);
      stroke(0);
      if(on){
        fill(random(255),random(255),random(255));
      }else{ fill(0);}
      rect(x,y,w,h);
    }
}