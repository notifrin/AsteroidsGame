class Spaceship extends Floater{
  public Spaceship(){
  corners = 7;
  xCorners = new int[]{-8,16,-8/*,-8,-8,-12,-12*/};
  yCorners = new int[]{-8,0,8/*,4,-4,4,-4*/};
  }
  public void setX(int speed) {
     myCenterX = speed;
   }
   public void setY(int speed) {
     myCenterY = speed;
   }
      public void setXSpeed(int speed) {
     myYspeed = speed;
   }
   public void setYSpeed(int speed) {
     myXspeed = speed;
   }
   public void setDirect(double speed) {
     myPointDirection = speed;
   }
  
  /* public void setYspeed(double y){
  myYspeed = y;
  }*/
  
  public void hyperSpace(){
  myXspeed = 0;
  myYspeed = 0;
  myCenterX = (double)(Math.random()*400)+50;
  myCenterY = (double)(Math.random()*400)+50;
  myPointDirection = (double)(Math.random()*360);
  }
}
