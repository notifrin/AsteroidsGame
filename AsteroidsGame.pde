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
   if (key == 'w') {
   ship.setYSpeed(0);
   ship.setXSpeed(0);
 }
 
 if(key == 's') {
   ship.setYSpeed(0);
   ship.setXSpeed(0);
 }
 
 if (key == 'h') {
   int ding = (int)(Math.random()*500);
   int speed = (int)(Math.random()*500);
   int wilbur = (int)(Math.random()*360);
   ship.setX(ding);
   ship.setY(speed);
   ship.setYSpeed(0);
   ship.setXSpeed(0);
   ship.setDirect((double)wilbur);
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
  ship.accelerate(.1); 

 }
 
 if(key == 's') {
  ship.accelerate(-.1); 
 }
 
  if(key == 'd') {
  ship.turn(10); 
 }
 
 if(key == 'a') {
  ship.turn(-10); 
 }

}
