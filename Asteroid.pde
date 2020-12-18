class Asteroid extends Floater{
  private int rotSpeed;
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
      myColor = color((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
      myCenterX = (int)(Math.random()*500)+50;
      myCenterY = (int)(Math.random()*500)+50;
      myDirectionX = (int)(Math.random()*2)+1;
      myDirectionY = (int)(Math.random()*2)+1;
      myPointDirection = 0;
      rotSpeed = (int)(Math.random()*6)-3;
  }
  void move (){
    turn(rotSpeed);
    super.move();
  }
   public float getMyX(){
    return (float)myCenterX;
  }
   public float getMyY(){
    return (float)myCenterY;
  }
}
