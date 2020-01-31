class Pixel
{
  float x, y;
  float sizeL, sizeH;
  color colour;
  
  public Pixel(float sizeL, float sizeH)
  {
    x = random(0, width);
    y = random(0, height);
    this.sizeL = sizeL;
    this.sizeH = sizeH;
    colour = bg.get((int)x, (int)y);
  }
  
  void appear()
  {
    fill(colour);
    rect(x, y, map(dist(x, y, mouseX, mouseY), 0, 200, sizeL, sizeH), map(dist(x, y, mouseX, mouseY), 0, 200, sizeL, sizeH));
  }
}
