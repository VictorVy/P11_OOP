class Snowflake
{
  float xSet, x, y;
  float size, speed;
  Boolean swayRight;
  float swayDist, swaySpeed;
  
  public Snowflake(float size, float speed, float swayDist, float swaySpeed)
  {
    xSet = random(0, width);
    x = xSet;
    y = random(0, height);
    this.size = size;
    this.speed = speed;
    this.swayDist = swayDist;
    this.swaySpeed = swaySpeed;
    
    if(random(-1, 1) >= 0)
      swayRight = true;
    else
      swayRight = false;
  }
  
  void appear()
  {
    //ellipse(x, y, size, size);
    line(x - size / 3, y + size / 3, x + size / 3, y - size / 3); //bottomLeft-topRight
    line(x - size / 3, y - size / 3, x + size / 3, y + size / 3); //topLeft-bottomRight
    line(x - size / 2, y, x + size / 2, y); //left-right
    line(x, y - size / 2, x, y + size / 2); //up-down
  }
  
  void fall()
  {
    y += speed;
    
    if(swayRight)
    {
      x += swaySpeed;
      
      if(x >= xSet + swayDist)
      {
        swayRight = false;
      }
    }
    else
    {
      x -= swaySpeed;
      
      if(x <= xSet - swayDist)
      {
        swayRight = true;
      }
    }
    
    if(y >= height)
    {
      xSet = random(0, width);
      x = xSet;
      y = 0 - size / 2;
    }
  }
}
