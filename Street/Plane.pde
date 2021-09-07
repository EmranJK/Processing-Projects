//split into classes...1) Background 2) Airplane 3) Oean



public class Plane
{
  private float planeMove;
  private int increaseVal;
  public Plane()
  {
  }

  public void display()
  {
    strokeWeight(5);
    stroke(0);
    plane();
  }


  public void plane()        ////////////plane
  {


    planeMove-=4;
    if (planeMove==-2600)
    {
      planeMove=0;
    }


    fill(255);
    rect(769+increaseVal+planeMove, 200, 405, 69);
    fill(0);
    textSize(50);
    text("ASSIGNMENT 2", 800+increaseVal+planeMove, 250);
    fill(120);
    line(700+increaseVal+planeMove, 200, 770+increaseVal+planeMove, 200);
    line(700+increaseVal+planeMove, 270, 770+increaseVal+planeMove, 270);
    triangle(560+increaseVal+planeMove, 217, 610+increaseVal+planeMove, 217, 560+increaseVal+planeMove, 120);
    triangle(560+increaseVal+planeMove, 247, 610+increaseVal+planeMove, 247, 560+increaseVal+planeMove, 350);
    rect(500+increaseVal+planeMove, 200, 200, 70);
    triangle(500+increaseVal+planeMove, 210, 400+increaseVal+planeMove, 230, 500+increaseVal+planeMove, 260);
  }
  public void setA(int increaseVal)
  {

    if ((increaseVal >= 0) && (increaseVal <= 1300)) {
      this.increaseVal = increaseVal;
    } else {
      this.increaseVal = 0;
    }
  }
  public float PlaneM()
  {
    return planeMove;
  }
}
