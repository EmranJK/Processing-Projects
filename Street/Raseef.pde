//split into classes...1) Background 2) Airplane 3) Oean



public class Raseef
{


  private int xCoord;
  public Raseef(int xPos)
  {

    xCoord =xPos;
  }

  public void display()
  {
    strokeWeight(5);
    stroke(0);
    raseef();
  }

  public void raseef()
  {                   /////////raseef




    fill(255);
    rect(xCoord, 550, 50, 25);
  }
  public float getXC()
  {
    return xCoord;
  }
}
