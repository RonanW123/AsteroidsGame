Spaceship X = new Spaceship();
Star[] Galaxy = new Star[500];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
boolean w, a, d;

public void setup() 
{
  size(1000, 1000);
  background(0);
  for(int i = 0; i < Galaxy.length; i++){
    Galaxy[i] = new Star();
    Galaxy[i].show();
  }

  for(int i = 0; i < 5; i++)
    asteroids.add(new Asteroid());
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
  text("Asteroids Left: " + asteroids.size(), 25, 150);

  for(int i = 0; i < asteroids.size(); i++){
    asteroids.get(i).show();
    asteroids.get(i).move();
    if(dist((float)asteroids.get(i).getCenterX(), (float)asteroids.get(i).getCenterY(), (float)X.getCenterX(), (float)X.getCenterY()) < 20)
      asteroids.remove(asteroids.get(i));
  }
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
