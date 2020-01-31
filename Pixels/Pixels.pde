PImage bg;

ArrayList<Pixel> myPixels;

void setup()
{
  size(750, 601);
  bg = loadImage("giorno.jpg");
  rectMode(CENTER);
  noStroke();
  
  myPixels = new ArrayList<Pixel>();
  
  for(int i = 0; i < 666; i++)
  {
    myPixels.add(new Pixel(0, 10));
  }
}

void draw()
{
  background(bg);
  
  for(Pixel i : myPixels)
  {
    i.appear();
  }
}
