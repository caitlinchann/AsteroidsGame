class Bullet extends Floater{
	public int getX(){return (int)myCenterX;}
  public void setX(int x){myCenterX = x;}
  public int getY(){return(int) myCenterY;}
  public void setY(int y){myCenterY = y;}
  public double getDirectionX(){return (double)myDirectionX;}
  public void setDirectionX(double x){myDirectionX = x;}
  public double getDirectionY(){return (double)myDirectionY;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getPointDirection(){return (double)myPointDirection;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}
  public Bullet(Spaceship theShip){
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myPointDirection = theShip.getPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + theShip.getDirectionX();
		myDirectionY = 5*Math.sin(dRadians) + theShip.getDirectionY();
    myColor = 255;
	}
  public void show()
  {
    noStroke();
    fill(255,0,0);
    ellipse((int)myCenterX,(int)myCenterY,5,5);
  }
}
