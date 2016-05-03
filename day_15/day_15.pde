Car myCar1;
Car myCar2;
Car myCar3;
Car myCar4;
Car myCar5;

void setup(){
  size(1000,320);
  myCar1 = new Car(color(random(255),random(255),random(255)),0,45,500);
  myCar2 = new Car(color(random(255),random(255),random(255)),5,69,550);
  myCar3 = new Car(color(random(255),random(255),random(255)),10,100,255);
  myCar4 = new Car(color(random(255),random(255),random(255)),15,200,105);
  myCar5 = new Car(color(random(255),random(255),random(255)),20,250,500);
  
}
void draw(){
  background(255);
  myCar1.move();
  myCar1.display();
  myCar2.move();
  myCar2.display();
  myCar3.move();
  myCar3.display();
  myCar4.move();
  myCar4.display();
  myCar5.move();
  myCar5.display();
}