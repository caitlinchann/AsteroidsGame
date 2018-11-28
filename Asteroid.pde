class Asteroid extends Floater{
	private int myRotSpeed;
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
	public Asteroid(){
		corners = 6;
		xCorners = new int[corners];
		yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myColor = color(88,92,99);
    myCenterX = (int)(Math.random()*1000);
    myCenterY = (int)(Math.random()*1000);
    myPointDirection = Math.random()*360;
    if(Math.random() < 0.5){
      myDirectionX = Math.random()*4;
      myDirectionY = Math.random()*4;
    }
    else
    {
      myDirectionX = Math.random()*-4;
      myDirectionY = Math.random()*-4;
    }
    myPointDirection = Math.random()*360;
    if(Math.random() < 0.5)
      myRotSpeed = -1;
    else
      myRotSpeed = 1;
	}
	public void move ()   //move the floater in the current direction of travel
  {      
    turn(myRotSpeed);
    super.move();
  }
}
