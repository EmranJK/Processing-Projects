//split into classes...1) Background 2) Airplane 3) Oean



public class Darabzeen
{

  private int xCoord;
  private int yCoord;
  public Darabzeen(int xPos, int yPos)
  {

    xCoord =xPos; 
    yCoord =yPos;
  }

  public void display()
  {

    strokeWeight(5);
    stroke(0);
    darabzeen();
  }

  public void darabzeen()
  {
    ////////darabzeen

    fill(180);
    rect(xCoord, yCoord, 15, 100);
  }
  public float getYC()
  {
    return yCoord;
  }
  public float getXC()
  {
    return xCoord;
  }
}
