class Star
{
  private int myX, myY, starColor;
  public Star(){
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*1000);
    starColor = 255;
  }
  public void show(){
    noStroke();
    fill(starColor);
    ellipse(myX, myY, 3, 3); 
  }
  public void twinkle(){
    int randominator = (int)(Math.random()*10)+1;
    if(randominator < 5)
      starColor = 255;
    else
      starColor = 0;
  }
}
