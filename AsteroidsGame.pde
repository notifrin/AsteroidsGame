Spaceship bob = new Spaceship();
Star [] nightSky = new Star[200];
public void setup(){
  size(500,500);
  for (int i =0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
}
public void draw(){
  background(0);
  for (int i = 0; i<nightSky.length;i++){
    nightSky[i].show();
    nightSky[i].twinkle();
  }
  bob.show();
  bob.move();
}

public void keyReleased() {
   if (key == 'w') {
   bob.setYSpeed(0);
   bob.setXSpeed(0);
 }
 
 if(key == 's') {
   bob.setYSpeed(0);
   bob.setXSpeed(0);
 }
 
 if (key == 'h') {
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
