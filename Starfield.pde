Particle[] normParticles = new Particle[100];
Particle[] oddParticles = new Particle[2];
Particle[] jumParticles = new Particle[1];
void setup()
{
  size(1000,1000);
   for(int a = 0; a < normParticles.length; a++) {
      normParticles[a] = new NormalParticle();
    }
   for(int  b= 0; b < oddParticles.length; b++) {
      oddParticles[b] = new NormalParticle();
    }
   for(int c = 0; c < jumParticles.length; c++) {
      jumParticles[c] = new NormalParticle();
    }
    background(0);
}
void draw()
{   
    fill(0,0,0,25);
    ellipse(0,0,1000,1000);
    for(int a= 0; a<normParticles.length; a++)
    {
      normParticles[a].show();
      normParticles[a].move();
    }
    for(int b= 0; b<oddParticles.length; b++)
    {
      oddParticles[b].show();
      oddParticles[b].move();
    }
    for(int c= 0; c<jumParticles.length; c++)
    {
      jumParticles[c].show();
      jumParticles[c].move();
    }
}
class NormalParticle implements Particle
{
  int shapeColor = 250; 
  double dTheta = 2.03;
  double dSpeed = 8.25;
  double dX = 320;
  double dY = 240;
  NormalParticle(){
    shapeColor = 250; 
    dX = 500;
    dY =500;
    dTheta = (int)(Math.random()*360)+1;
    dSpeed = 5;
  }
  
  void move(){
    dTheta += .10;
    dX += Math.cos(dTheta)*dSpeed;
    dY += Math.sin(dTheta)*dSpeed;
  }
  void show() {
    noStroke();
    fill(shapeColor);
    ellipse((float)dX, (float)dY, 10,10);
    stroke(0);
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle 
{
  double dX;
  double dY;
  double dSpeed;
  double dTheta;
  int shapeColor;
  OddballParticle()
  {
  shapeColor = 250; 
  dX=150;
  dY=150;
  dTheta=(int)(Math.random()*360)+1;
  dSpeed=20;
  }
  void move()
  {
    dX+=(Math.sin(dTheta)*dSpeed);
    dY+=(Math.cos(dTheta)*dSpeed);
    dTheta+=.4;
  }
  void show()
  {
  noStroke();
  fill(shapeColor);
  ellipse((float)dX,(float)dY,70,70);
  stroke(0);
  }

}
class JumboParticle 
{
  double dX;
  double dY;
  double dSpeed;
  double dTheta;
  int shapeColor;
  public void show()
  {
    noStroke();
    fill(shapeColor);
    ellipse((float)dX,(float)dY,50,50);
    stroke(0);  
  }  
}
