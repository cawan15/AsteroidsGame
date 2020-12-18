class Spaceship extends Floater  {   
  public Spaceship() {
    corners = 4; 
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myColor = (255);
    myCenterX = 300;
    myCenterY = 300;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 250;

    myColor = 255;
    myCenterX = 250;
    myCenterY  = 250; 
    myDirectionX = 0; 
    myDirectionY = 0;
    myPointDirection = 0; 
  }
  public void stop(){
    myDirectionX = 0;
    myDirectionY = 0;
  }
  public void hyperSpace(){
        myCenterX = (int)(Math.random()*width);
        myCenterY = (int)(Math.random()*height);
        myPointDirection = (Math.random()*361);
   }
  public float getMyX(){
    return (float)myCenterX;
  }
  public float getMyY(){
    return (float)myCenterY;
  }
  public double getMyPD(){
    return myPointDirection;
  }
}
