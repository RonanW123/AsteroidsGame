class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 23;
    xCorners = new int[]{20, 8, 8, 0, -4, 0, 0, -16, -16, -12, -8, -12, -12, -8, -12, -16, -16, 0, 0, -8, 0, 8, 8};
    yCorners = new int[]{0, 8, 4, 4, 8, 8, 12, 12, 8, 8, 4, 4,-4, -4, -8, -8, -12, -12, -8, -8, -4, -4, -8};
    myColor = 255;
    myCenterX = myCenterY = 500;
    myXspeed = myYspeed = 0;
    myPointDirection = 0;
  }
  public void hyper(){
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*1000); 
    myCenterY = (int)(Math.random()*1000); 
    myPointDirection = (int)(Math.random()*360)+1;
  }
  public void speedControl(){
    if(myXspeed > 0)
      myXspeed *= 0.99;
    if(myXspeed < 0)
      myXspeed *=0.99;
    if(myYspeed > 0)
      myYspeed *= 0.99;
    if(myYspeed < 0)
      myYspeed *= 0.99;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
}
