Spaceship bob = new Spaceship();
Star [] nightSky = new Star[200];
Asteroid [] rock = new Asteroid[10];
public void setup(){
  size(500,500);
  for (int i =0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  for (int i =0; i < rock.length; i++){
    rock[i] = new Asteroid(173);
  }
}
public void draw(){
  background(0);
  for (int i = 0; i<nightSky.length;i++){
    nightSky[i].show();
    nightSky[i].twinkle();
  }
  for (int i = 0; i<rock.length;i++){
    rock[i].show();
    rock[i].move();
    if (rock[i].getXSpeed() ==0 && rock[i].getYSpeed() ==0){
    rock[i].accelerate((Math.random()*2)-1);}
  }
  bob.show();
  bob.move();
}

public void keyReleased() {
/* if (key == 'w') {
     for(double i = bob.getYSpeed();i > 0;i-=.1){
   bob.deaccelerate(.1);
 }
 
   for(double i = bob.getXSpeed();i > 0;i-=.1){
   bob.deaccelerate(.1);
 }
 
 }
 
 if(key == 's') {
   for(double i = bob.getYSpeed();i > 0;i-=.1){
   bob.backdeaccelerate(.1);
 }
 for(double i = bob.getXSpeed();i > 0;i-=.1){
   bob.backdeaccelerate(.1);
 }
 }*/
 
 if (key == 'r') {
   int ding = (int)(Math.random()*500);
   int speed = (int)(Math.random()*500);
   int wilbur = (int)(Math.random()*360);
   bob.setX(ding);
   bob.setY(speed);
   bob.setYSpeed(0);
   bob.setXSpeed(0);
   bob.setDirect((double)wilbur);
 }
}
public void keyPressed() {
 if (key == 'w') {
  bob.accelerate(.1); 

 }
 
 if(key == 's') {
  bob.accelerate(-.1); 
 }
 
  if(key == 'd') {
  bob.turn(10); 
 }
 
 if(key == 'a') {
  bob.turn(-10); 
 }
}
