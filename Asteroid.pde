class Asteroid extends Floater
{
  private double myTurnSpeed;
  public Asteroid(){
    corners = (int)(Math.random()*3)+4;
    ArrayList <Integer> xCorner = new ArrayList <Integer>();
    ArrayList <Integer> yCorner = new ArrayList <Integer>();
    for(int i = 0; i < corners; i++){
      xCorner.add((int)(Math.random()*6)+5);
      yCorner.add((int)(Math.random()*6)+5);
    }
    for(int i = 1; i < corners; i++){
      xCorner.set(i, (int)(Math.random()*6)-10);
      yCorner.set(i, (int)(Math.random()*6)+5);
    }
    for(int i = 2; i < corners; i++){
      xCorner.set(i, (int)(Math.random()*6)-10);
      yCorner.set(i, (int)(Math.random()*6)-10);
    }
    for(int i = 3; i < corners; i++){
      xCorner.set(i, (int)(Math.random()*6)+5);
      yCorner.set(i, (int)(Math.random()*6)-10);
    }
    for(int i = 4; i < corners; i++){
      xCorner.set(i, (int)(Math.random()*6)+10);
      yCorner.set(i, 0);
    }
    for(int i = 5; i < corners; i++){
      xCorner.set(3, (int)(Math.random()*6)-10);
      yCorner.set(3, (int)(Math.random()*6)-10);
      xCorner.set(4, (int)(Math.random()*6)+5);
      yCorner.set(4, (int)(Math.random()*6)-10);
      xCorner.set(5, (int)(Math.random()*6)+10);
      yCorner.set(5, 0);
      xCorner.set(2, (int)(Math.random()*6)-15);
      yCorner.set(2, 0);
    }
    xCorners = new int[corners];
    yCorners = new int[corners];
    for(int i = 0; i < xCorner.size(); i++){
      xCorners[i] = xCorner.get(i);
      yCorners[i] = yCorner.get(i);
    }
    myColor = 255;
    myCenterX = (int)(Math.random()*1000);
    myCenterY = (int)(Math.random()*1000);
    myXspeed = (Math.random()*10)-5;
    myYspeed = (Math.random()*10)-5;
    myPointDirection = (Math.random()*360);
    myTurnSpeed = (Math.random()*10)-5;
  }
  public void move(){      
    myPointDirection += myTurnSpeed;
    super.move();     
  }   
  public void show(){
    fill(0);
    super.show(); 
  }
  public double getCenterX(){
     return myCenterX;
  }
  public double getCenterY(){
     return myCenterY;
  }
}
