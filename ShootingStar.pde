public class ShootingStar extends Floater{
  public ShootingStar(int x, int y){
  myPointDirection = 65;
  myCenterX = x;
  myCenterY = y;
  myColor = color(183,255,64);
 myXspeed = 0;
  myYspeed = 0;
  accelerate(3);
  }
   public double getXSpeed(){
    return myXspeed;
  }
  public double getYSpeed(){
    return myYspeed;
  }
   public double getX(){
  return myCenterX;
  }
  public double getY(){
  return myCenterY;
  }
  public void setX(int X) {
     myCenterX = X;
   }
   public void setY(int Y) {
     myCenterY = Y;
   }
    public void setXSpeed(int speed) {
     myYspeed = speed;
   }
   public void setYSpeed(int speed) {
     myXspeed = speed;
   }
   
   public void show(){
     fill(color(230,255,0));
  ellipse((float)myCenterX,(float)myCenterY, 50,50);
   }
   
}
