class Bullet extends Floater{
  private double dRadians;
  public Bullet(){
    myCenterX = ufo.getMyX();
    myCenterY = ufo.getMyY();
    myPointDirection = ufo.getMyPD();
    dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5*Math.cos(dRadians) + myDirectionX;
    myDirectionY = 5*Math.sin(dRadians) + myDirectionY;
  }
  public void show(){
    fill(255,0,0);
    stroke(255,0,0);
    ellipse((float)myCenterX+4, (float)myCenterY, 5,5);
    ellipse((float)myCenterX-4, (float)myCenterY, 5,5);
  }
  public void move ()
  {      
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
    pew.remove(this);    
    }    
    else if (myCenterX<0)
    {     
      pew.remove(this);   
    }    
    if(myCenterY >height)
    {    
      pew.remove(this); 
    } 
    
    else if (myCenterY < 0)
    {     
      pew.remove(this);    
    }   
  }   
  public float getMyX(){
    return (float)myCenterX;
  }
  public float getMyY(){
    return (float)myCenterY;
  }
}
