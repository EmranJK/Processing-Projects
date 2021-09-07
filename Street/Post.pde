//split into classes...1) Background 2) Airplane 3) Oean



public class Post
{


  private int yCoord;
  public Post(int yPos)
  {

    yCoord =yPos;
  }

  void display()
  {
    strokeWeight(5);
    stroke(0);
    post();
  }

  public void post()
  { 
    ////////post
    fill(255, 153, 51);
    ellipse(1200, 125, 75, 35);
    fill(120);
    rect(1250, yCoord, 25, 500);
    rect(1150, yCoord, 125, 25);
  }
  public float getYC()
  {
    return yCoord;
  }
}
