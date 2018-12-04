Spaceship bob = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
Star[] nightSky = new Star[1000];
Star[] smallStar = new littleStar[1000];
public void setup() 
{
  size(1000,1000);
  bob.setDirectionX(0);
  bob.setDirectionY(0);
  for(int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for(int i = 0; i < smallStar.length; i++)
  {
    smallStar[i] = new littleStar();
  }
  for(int i = 0; i < 30; i++)
  {
    rocks.add(new Asteroid());
  }
  bob.setDirectionX(0);
  bob.setDirectionY(0);
}
public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  for(int i = 0; i < smallStar.length; i++)
  {
    smallStar[i].show();
  }
  for(int i = 0; i < rocks.size(); i++)
  {
    rocks.get(i).move();
    rocks.get(i).show();
    float d = dist(bob.getX(), bob.getY(), rocks.get(i).getX(), rocks.get(i).getY());
    if (d < 10)
    {
      rocks.remove(i);
    }
  bob.show();
  bob.move();
  }
}
  
public void keyPressed(){
  if(key == 'h'){
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setX((int)(Math.random()*400));
    bob.setY((int)(Math.random()*400));
    bob.setPointDirection((int)(Math.random()*400));
  }
  if(key == '4'){bob.turn(-50);}
  if(key == '6'){bob.turn(50);}
  if(key == '5'){bob.accelerate(1);}
}
