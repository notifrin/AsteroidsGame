//your variable declarations here
Star [] stars;
Spaceship ship;
public void setup() 
{
  size(500,500);
  ship = new Spaceship();
  stars = new Star [500];
  
  
    for(int i =0; i < stars.length; i++) {
    stars[i] = new Star();
  }

  //your code here
}
public void keyReleased() {

 
 if (key == 'h') {
   int speedy = (int)(Math.random()*500);
   int speedx = (int)(Math.random()*500);
   int direction = (int)(Math.random()*360);
   ship.setX(ding);
   ship.setY(speedx);
   ship.setYspeedx(0);
   ship.setXspeedx(0);
   ship.setDirect((double)direction);
 }
}

public void draw() 
{
  background(0);
   noStroke();
    for(int i =0; i < stars.length; i++) {
    stars[i].show();
  }
  
   ship.show();
  ship.move();
  //your code here
}


public void keyPressed() {
    if (key == 'w') {
      ship.accelerate(0.2);
 }
 
 if(key == 's') {
  ship.accelerate(-0.2);
 }
  if(key == 'd') {
  ship.turn(10); 
 }
