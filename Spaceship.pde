class Spaceship extends Floater{
  public Spaceship(){
  corners = 7;
  xCorners = new int[corners];/*{-8,16,-8,-8,-8,-12,-12}*/
  yCorners = new int[corners];/*{-8,0,8/*,4,-4,4,-4}*/
  xCorners[0] = -8;
  xCorners[1] = 16;
  xCorners[2] = -8;
  xCorners[3] = -8;
  xCorners[4] = -8;
  xCorners[5] = -8;
  xCorners[6] = -12;
  yCorners[0] = -12;
  yCorners[1] = 0;
  yCorners[2] = 8;
  yCorners[3] = 4;
  yCorners[4] = -4;
  yCorners[5] = 4;
  yCorners[6] = -4;
  myColor = color(183,255,64);
  }
  public double getX(){
  return myCenterX;
  }
  public double getY(){
  return myCenterY;
  }
  public double getXSpeed(){
    return myXspeed;
  }
  public double getYSpeed(){
    return myYspeed;
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
  public void deaccelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myXspeed -= ((dAmount) * Math.cos(dRadians));    
    myYspeed -= ((dAmount) * Math.sin(dRadians));       
  }   
  public void backdeaccelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians = myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myXspeed -= ((dAmount) * -Math.cos(dRadians));    
    myYspeed -= ((dAmount) * -Math.sin(dRadians));       
  }   
}
