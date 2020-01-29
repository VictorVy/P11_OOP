class Ellipses
{
  float x, y;
  float setSizeX, setSizeY;
  float sizeX, sizeY;
  float spreadSpeedX, spreadSpeedY;
  float alpha, alphaSpeed;
  
  public Ellipses(float sizeX, float sizeY, float spreadSpeedX, float spreadSpeedY)
  {
    x = random(0, width);
    y = random(0, height);
    this.setSizeX = sizeX;
    this.setSizeY = sizeY;
    this.sizeX = setSizeX;
    this.sizeY = setSizeY;
    this.spreadSpeedX = spreadSpeedX;
    this.spreadSpeedY = spreadSpeedY;
    alpha = 255;
    alphaSpeed = random(10, 40);
  }
  
  void appear()
  {
    stroke(255, alpha);
    strokeWeight(random(1, 4));
    ellipse(x, y, sizeX, sizeY);
  }
  
  void spread()
  {
    sizeX += spreadSpeedX;
    sizeY += spreadSpeedY;
    alpha -= alphaSpeed;

    if(alpha <= 0)
    {
      x = random(0, width);
      y = random(0, height);
      sizeX = setSizeX;
      sizeY = setSizeY;
      alpha = 255;
      alphaSpeed = random(10, 40);
    }
  }
}
