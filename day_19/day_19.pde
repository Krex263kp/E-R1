Button[] buttons=new Button[6];
void setup(){
  size(1000,1000);
  for(int i=0;i<buttons.length;i++){
    buttons[i]=new Button(i*150+25,height/2-25,100,100);
  }
}
void draw(){
  background(255);
  for(int i=0;i<buttons.length;i++){
    buttons[i].display();
  
  
  
  }
}
void mousePressed(){
  for(int i=0;i<buttons.length;i++){
    buttons[i].click(mouseX,mouseY);}
  
  
}