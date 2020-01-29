ArrayList<Snowflake> myFlakes;
ArrayList<Ellipses> myRipples;

void setup()
{
  size(800, 600, P2D);
  noFill();
  stroke(255);
  strokeWeight(2);
  
  myFlakes = new ArrayList<Snowflake>();
  myRipples = new ArrayList<Ellipses>();
  
  for(int i = 0; i < 444; i++)
    myFlakes.add(new Snowflake(random(4, 8), random(2, 6), random(1, 3), random(0.1, 0.2)));
}

void draw()
{
  background(0);
  
  for(Snowflake i : myFlakes)
  {
    i.appear();
    i.fall();
  }
  
  if(myRipples.size() > 0)
  {
    for(int i = 0; i < myRipples.size(); i++)
    {
      myRipples.get(i).appear();
      myRipples.get(i).spread();
      if(myRipples.get(i).alpha <= 0)
      {
        myRipples.remove(i);
      }
    }
  }
}
