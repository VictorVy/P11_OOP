class Ellipses
{
  float x, y;
  float setSize;
  float size;
  float spreadSpeed;
  float alpha, alphaSpeed;
  
  public Ellipses(float x, float y, float size, float spreadSpeed)
  {
    this.x = x;
    this.y = y;
    this.setSize = size;
    this.size = setSize;
    this.spreadSpeed = spreadSpeed;
    alpha = 255;
    alphaSpeed = random(10, 40);
  }
  
  void appear()
  {
    stroke(255, alpha);
    strokeWeight(random(1, 4));
    ellipse(x, y, size, random(size / 2, size / 3));
  }
  
  void spread()
  {
    size += spreadSpeed;
    size += spreadSpeed;
    alpha -= alphaSpeed;

    if(alpha <= 0)
    {
      myRipples.remove(myRipples.get(0));
    }
  }
  
  
}
