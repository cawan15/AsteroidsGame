Star[] shine = new Star [250];
ArrayList <Asteroid> debris = new ArrayList <Asteroid>();
Spaceship ufo = new Spaceship();
ArrayList <Bullet> pew = new ArrayList <Bullet>();
int a = 10;
int lev = 1;
public void setup()
{
  size(500,500);
  background(0);
  for(int i = 0; i < shine.length; i++)
  {
    shine[i] = new Star();
  }
  for(int p = 0; p < a; p++)
  {
    debris.add(new Asteroid());
  }
}
public void draw() 
{
 background(0);
  for(int i = 0; i < shine.length; i++)
    {
      shine[i].show();
    }
  for(int p = 0; p < debris.size(); p++)
    {
      debris.get(p).show();
      debris.get(p).move();
      if(dist(debris.get(p).getMyX(), debris.get(p).getMyY(), ufo.getMyX(), ufo.getMyY()) < 20){
          debris.remove(p);
          break;
        }
        for(int k = 0; k < pew.size(); k++)
          if(dist(debris.get(p).getMyX(), debris.get(p).getMyY(), pew.get(k).getMyX(), pew.get(k).getMyY()) < 20){
            debris.remove(p);
            pew.remove(k);
            break;
        }
    }
  for(int k = 0; k < pew.size(); k++){
      pew.get(k).show();
      pew.get(k).move();
    }
  ufo.move();
  ufo.show();
  if(debris.size() == 0){
    for(int p = 0; p < (a+lev*5-5); p++)
    {
      debris.add(new Asteroid());
    }
    lev++;
  }
}
public void keyPressed(){
  if(key == 's'){
      ufo.stop();
      ufo.hyperSpace();
  }else if(key == 'w'){
      ufo.accelerate(.5);
  }else if(key == 'a'){
      ufo.turn(-30);
  }else if(key == 'd'){
      ufo.turn(30);
    }
   else if(key == ' '){
      if(pew.size() < 8)
        pew.add(new Bullet());
   }
  }
