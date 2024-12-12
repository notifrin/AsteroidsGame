Spaceship bob = new Spaceship();
Star [] nightSky = new Star[200];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>() ;
int n = 0;
//ArrayList <Asteroid> result = new ArrayList<Asteroid>();
public void setup(){
  size(500,500);
  for (int i =0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  
}
public void draw(){

  background(0);
  if (n <10){
    n++;
    rock.add(new Asteroid(173));
  }
  for (int i = 0; i<nightSky.length;i++){
    nightSky[i].show();
    nightSky[i].twinkle();
  }
  for (int i = 0; i < rock.size(); i++) {
    rock.get(i).move();
    rock.get(i).show();
    if (rock.get(i).getXSpeed() == 0){
    rock.get(i).accelerate(.5);
    }
    float p = dist((float)bob.getX(), (float)bob.getY(), (float)rock.get(i).getX(),(float) rock.get(i).getY());
    if(p<45){
   // result.add(rock.get(i));
     rock.remove(i);
     i--;
     n--;
    }
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
