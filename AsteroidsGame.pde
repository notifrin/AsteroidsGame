Spaceship bob = new Spaceship();
Star [] nightSky = new Star[200];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>(9999999) ;
public void setup(){
  size(500,500);
  for (int i =0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  for (int i =0; i < 10; i++){
    rock.add(new Asteroid(173));
    
  }
}
public void draw(){
  background(0);
  for (int i = 0; i<nightSky.length;i++){
    nightSky[i].show();
    nightSky[i].twinkle();
  }
  for (int i = 0; i < rock.size(); i++) {
    rock.get(i).move();
    rock.get(i).show();
    float p = dist((float)bob.getX(), (float)bob.getY(), (float)rock.get(i).getX(),(float) rock.get(i).getY());
    if(p<40)
     rock.remove(i);
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
