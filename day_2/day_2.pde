void setup(){
  size(500,500);
}
void draw(){
  background(100);
   stroke(250,0,0);
   fill(0);
   rectMode(CENTER);
   rect(width/2,height/2,mouseX,mouseY);
  line(0,0,mouseX,mouseY);
 // println("you pressed" + key + " " + keyCode);
}
void mousepressed(){
  println(mouseX + "," + mouseY);
}