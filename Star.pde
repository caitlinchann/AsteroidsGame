class Star //note that this class does NOT extend Floater
{
  public int myX, myY;
  public Star()
  {
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
  }
  public void show()
  {
    fill(255);
    ellipse(myX,myY,2,2);
  }
}
class littleStar extends Star
{
  public void show()
  {
    ellipse(myX,myY,1,1);
  }
}
