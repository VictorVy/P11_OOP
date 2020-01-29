ArrayList<Ellipses> myRipples;
ArrayList<Snowflake> myFlakes;

void setup()
{
  size(800, 600);
  noFill();
  
  myRipples = new ArrayList<Ellipses>();
  myFlakes = new ArrayList<Snowflake>();
  
  for(int i = 0; i < 44; i++)
    myRipples.add(new Ellipses(random(10, 15), random(4, 8), random(4, 6), random(2, 4)));
    
  for(int i = 0; i < 444; i++)
    myFlakes.add(new Snowflake(random(4, 8), random(2, 6), random(1, 3), random(0.1, 0.2)));
}

void draw()
{
  background(0);
  
  for(Ellipses i : myRipples)
  {
    i.appear();
    i.spread();
  }
  
  for(Snowflake i : myFlakes)
  {
    i.appear();
    i.fall();
  }
}
