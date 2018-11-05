Spaceship bob = new Spaceship();
Star[] nightSky = new Star[100];
Star[] smallStar = new littleStar[100];
public void setup() 
{
  size(400,400);
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
  bob.show();
  bob.move();
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
  if(key == '5'){bob.accelerate(5);}
}
