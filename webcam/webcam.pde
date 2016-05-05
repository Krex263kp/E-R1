import processing.video.*;
Capture video;



void setup(){
  size(640,480);
  video=new Capture(this,640,480);
  video.start();
}
void captureEvent(Capture video){video.read();}


void draw(){
  background(255);
  tint(random(255),random(255),random(255));
  translate(width/2,height/2);
  imageMode(CENTER);
  image(video,0,0,mouseX,mouseY);
  
  
}