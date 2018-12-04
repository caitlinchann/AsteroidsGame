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
		corners = 8;
		xCorners = new int[corners];
		yCorners = new int[corners];
    xCorners[0] = -20;
    yCorners[0] = -17;
    xCorners[1] = 16;
    yCorners[1] = -17;
    xCorners[2] = 22;
    yCorners[2] = 0;
    xCorners[3] = 15;
    yCorners[3] = 19;
    xCorners[4] = -20;
    yCorners[4] = 17;
    xCorners[5] = -14;
    yCorners[5] = 0;
    xCorners[6] = -16;
    yCorners[6] = -11;
    xCorners[7] = -14;
    yCorners[7] = 13;
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
