
public class Background
{
  private float cloudMove;
  private int lengthAndWidth;

  public Background(int objectVal)
  {
    lengthAndWidth =objectVal;
  }

  void display()
  {
    noStroke();
    sky();
    sun();
    cloud();
  }

  public void cloud()
  {
    cloudMove+=1;
    if (cloudMove==2000)
    {
      cloudMove=0;
    }
    fill(255);                       //////cloud  
    ellipse(-200+cloudMove, lengthAndWidth+40, lengthAndWidth+50, lengthAndWidth);
    ellipse(-300+cloudMove, lengthAndWidth+40, lengthAndWidth+50, lengthAndWidth);
    ellipse(-250+cloudMove, lengthAndWidth-20, lengthAndWidth, lengthAndWidth);
  }

  public void sky()
  {
    fill(0, 204, 255);
    rect(0, 0, 1400, lengthAndWidth*10);
  }


  public void sun()
  {                               //////////sun



    for (int i=0; i>=-110; i--)
    {

      fill(255, 255+i, 0);
      ellipse(1000, lengthAndWidth, 150+i, 150+i);
    }
  }

  public float getLandC()
  {
    return lengthAndWidth;
  }
  public float getY()
  {
    return cloudMove;
  }
}
