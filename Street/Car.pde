
public class Car
{

  private int YandXMove;

  private int objectValue;


  public Car(int xPos)
  {
    objectValue= xPos;
  }

  public void display()
  {
    strokeWeight(5);
    stroke(0);
    car();
  }


  public void car()   //rename this as something like drawCar()
  {
    ///////////car
    ///each element is a pixel on the screen...rename to pixelLocation????


    YandXMove+=5;   
    if (YandXMove==2300)
    {
      YandXMove=0;
      //println (carCrossed);
    }
    fill(0, 204, 255);
    ellipse(410-objectValue+YandXMove, 700, 150, 150);
    fill(0, 179, 60);
    rect(400-objectValue+YandXMove, 725, 150, 150);
    rect(70-objectValue+YandXMove, 625, 350, 250);



    fill(0, 179, 60);
    rect(270-objectValue+YandXMove, 625, 150, 250);
    rect(70-objectValue+YandXMove, 625, 200, 250);
    rect(70-objectValue+YandXMove, 725, 200, 150);
    rect(270-objectValue+YandXMove, 725, 150, 150);

    fill(0, 204, 255);
    rect(295-objectValue+YandXMove, 640, 100, 75);
    rect(92-objectValue+YandXMove, 640, 160, 75);


    fill(204, 51, 0);
    rect(70.2-objectValue+YandXMove, 775, 15, 100);


    fill(255, 153, 51);
    rect(490-objectValue+YandXMove, 725, 60, 25);


    fill(0);
    ellipse(150-objectValue+YandXMove, objectValue+80, 100, 100);
    ellipse(480-objectValue+YandXMove, objectValue+80, 100, 100);
    fill(255);
    ellipse(150-objectValue+YandXMove, objectValue+80, 80, 80);
    ellipse(480-objectValue+YandXMove, objectValue+80, 80, 80);
    fill(180);
    ellipse(150-objectValue+YandXMove, objectValue+80, 40, 40);
    ellipse(480-objectValue+YandXMove, objectValue+80, 40, 40);
  }

  public float getXYmove()
  {
    return YandXMove;
  }
  public float getObjectVal()
  {
    return objectValue;
  }
}
