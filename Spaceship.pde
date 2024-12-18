class Spaceship extends Floater  
{   
    public Spaceship() {
     corners = 7;
      myCenterY = 250;
      myCenterX = 250;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = 12;
     yCorners[0] = 0;
     xCorners[1] = -4;
     yCorners[1] = 6;
     xCorners[2] = -2;
     yCorners[2] = 4;
     xCorners[3] = -2;
     yCorners[3] = 2;
     xCorners[4] = -5;
     yCorners[4] = 0;
     xCorners[5] = -2;
     yCorners[5] = -2;
     xCorners[6] = -2;
     yCorners[6] = -4;
     myColor = color(255);
     
   }
     public void setXspeed(double x){
       myXspeed = x;
     }
     public void hyperspace(){
       myXspeed = 0;
       myYspeed = 0;
       myCenterX = Math.random()*400;
       myCenterY = Math.random()*400;
       myPointDirection = Math.random()*360;
     }
     public double getX(){
       return myCenterX;
     }
     public double getY(){
       return myCenterY;
     }
}
