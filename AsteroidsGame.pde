Spaceship X = new Spaceship();
Star[] Galaxy = new Star[500];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
boolean w, a, d;
int hp = 3;

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
  
  textSize(15);
  textAlign(LEFT);
  text("myXspeed: " + Math.round(X.getXspeed()), 25, 25);
  text("myYspeed: " + Math.round(X.getYspeed()), 25, 50);
  text("myCenterX: " + Math.round(X.getCenterX()), 25, 75);
  text("myCenterY: " + Math.round(X.getCenterY()), 25, 100);
  text("myPointDirection: " + Math.round(X.getPointDirection()), 25, 125);
  text("Asteroids Left: " + asteroids.size(), 25, 150);
  text("Spaceship HP: " + hp, 25, 175);

  for(int i = 0; i < asteroids.size(); i++){
    asteroids.get(i).show();
    asteroids.get(i).move();
    if(dist((float)asteroids.get(i).getCenterX(), (float)asteroids.get(i).getCenterY(), (float)X.getCenterX(), (float)X.getCenterY()) < 25){
      asteroids.remove(asteroids.get(i));
      hp--; 
    }
  }
  
  for(int i = 0; i < bullets.size(); i++){
    bullets.get(i).show();
    bullets.get(i).move();
    for(int x = 0; x < asteroids.size(); x++)
      if(dist((float)asteroids.get(x).getCenterX(), (float)asteroids.get(x).getCenterY(), (float)bullets.get(i).getCenterX(), (float)bullets.get(i).getCenterY()) < 25){
        asteroids.remove(asteroids.get(x));
        bullets.remove(bullets.get(i));
        break;
      }
  }
  
  if(asteroids.size() < 1)
    for(int i = 0; i < (int)(Math.random()*10)+1; i++)
      asteroids.add(new Asteroid());
      
  if(hp == 0){
    X.setXspeed(0);
    X.setYspeed(0);
    for(int i = 0; i < asteroids.size(); i++){
      asteroids.get(i).setXspeed(0);
      asteroids.get(i).setYspeed(0);
    } 
    fill(0, 0, 0, 150);
    rect(0,0, 1000, 1000);
    fill(250);
    textSize(25);
    textAlign(CENTER);
    text("You Blew Up!", 500, 475);
    textSize(15);
    text("Press 'r' to play again", 500, 525);
  }
}

public void keyPressed(){
  if(key == 'w')
    w = true;
  if(key == 'a')
    a = true; 
  if(key == 'd')
    d = true;
  if(key == 'e')
    X.hyper();
  if(key == ' ' && hp > 0)
    bullets.add(new Bullet(X));
  if(key == 'r' && hp == 0){
    hp = 3;
    for(int i = 0; i < asteroids.size(); i++){
      asteroids.get(i).setXspeed((int)(Math.random()*10)-5);
      asteroids.get(i).setYspeed((int)(Math.random()*10)-5);
    }
    X.setCenterX(500);
    X.setCenterY(500);
    X.setPointDirection(0);
  }
}

public void keyReleased(){
  if(key == 'w')
    w = false;
  if(key == 'a')
    a = false; 
  if(key == 'd')
    d = false;
}
