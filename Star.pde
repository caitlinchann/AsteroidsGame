class Star //note that this class does NOT extend Floater
{
  public int myX, myY, myColor;
  public Star()
  {
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*1000);
    //myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    myColor = color(255);
  }
  public void show()
  {
    noStroke();
    fill(myColor);
    //fill((myColor),(int)(Math.random()*256),(int)(Math.random()*256));
    ellipse(myX,myY,3,3);
  }
}
class littleStar extends Star
{
  public void show()
  {
    //fill(myColor);
    ellipse(myX,myY,2,2);
  }
}
