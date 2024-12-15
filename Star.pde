class Star {
  private int myX, myY,size;
  public Star(){
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*800);
    size = 3;
  }
  public void twinkle(){
    size = (int)(Math.random()*2)+2;
  }
  public void show(){
    noStroke();
    fill(color(255,255,255));
    ellipse(myX,myY,size,size);
  }
}
