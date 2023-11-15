Spaceship X = new Spaceship();
Star[] Galaxy = new Star[500];
boolean w, a, d;

public void setup() 
{
  size(1000, 1000);
  background(0);
  for(int i = 0; i < Galaxy.length; i++){
    Galaxy[i] = new Star();
    Galaxy[i].show();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < Galaxy.length; i++){
    Galaxy[i].twinkle();
    Galaxy[i].show();
  }
  
  X.show();
  X.move();
  X.speedControl();
  
  if(w == true)
    X.accelerate(0.25);
  if(a == true)
    X.turn(-5); 
  if(d == true)
    X.turn(5);
  
  text("myXspeed: " + Math.round(X.getXspeed()), 25, 25);
  text("myYspeed: " + Math.round(X.getYspeed()), 25, 50);
  text("myCenterX: " + Math.round(X.getCenterX()), 25, 75);
  text("myCenterY: " + Math.round(X.getCenterY()), 25, 100);
  text("myPointDirection: " + Math.round(X.getPointDirection()), 25, 125);
}

public void keyPressed(){
  if(key == 'w')
    w = true;
  if(key == 'a')
    a = true; 
  if(key == 'd')
    d= true;
  if(key == 'e')
    X.hyper();
}

public void keyReleased(){
  if(key == 'w')
    w = false;
  if(key == 'a')
    a = false; 
  if(key == 'd')
    d= false;
}
