class Spaceship extends Floater
{    
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
  public Spaceship(){
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2]= -8;
    yCorners[2] = 8;
    myColor = color(255);
    myCenterX = 500;
    myCenterY = 500;
    myDirectionX = 2;
    myDirectionY = 3;
    myPointDirection = 345;
  }
}
