Ball ball1;
Ball ball2;
Ball ball3;
Ball ball4;
Ball ball5;
float gravity = .1;





void setup(){   
size(1000,1000);
ball1=new Ball(0,0,random(100));
ball2=new Ball(250,0,random(100));
ball3=new Ball(500,0,random (100));
ball4=new Ball(750,0,random(100));
ball5=new Ball(1000,0,random(100));
}



void draw(){
  background(255);
  ball1.display();
  ball1.update();
  ball2.display();
  ball2.update();
  ball3.display();
  ball3.update();
  ball4.display();
  ball4.update();
  ball5.display();
  ball5.update();
}
  
 