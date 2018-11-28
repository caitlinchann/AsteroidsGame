Spaceship bob = new Spaceship();
Asteroid[] sue = new Asteroid[30];
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
  for(int i = 0; i < sue.length; i++)
  {
    sue[i] = new Asteroid();
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
  bob.show();
  bob.move();
  for(int i =0; i < sue.length; i++)
  {
    sue[i].show();
    sue[i].move();
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
  if(key == '5'){bob.accelerate(5);}
}
