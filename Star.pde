class Star //note that this class does NOT extend Floater
{
  public int myX, myY, myColor;
  public Star()
  {
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*1000);
  }
  public void show()
  {
    fill(255);
    ellipse(myX,myY,3,3);
  }
}
class littleStar extends Star
{
  public void show()
  {
    ellipse(myX,myY,1,1);
  }
}
