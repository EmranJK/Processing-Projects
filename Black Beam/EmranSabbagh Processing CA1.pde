/*
Name : Emran Sabbagh.
 Student Number: 20088634.
 Programme Name: Black Beam.
 
 Brief description of the animation achieved: Logo made of differnet shapes and
 change colour and position by mouse movement.
 
 Known bugs/problems:
 
 Any sources referred to during the development of the assignment (no need to reference lecture/lab materials):
 https://www.youtube.com/watch?v=0B9UGiuSyOk&t=136s : Adding images to sketch.
 */
PImage world;
float zCoordinate;
float aCoordinate;
float bCoordinate=600-10;
float cCoordinate;
void setup() {
  size(1600, 1600);
  world =loadImage("2.jpg");
  for (int i=3; i>0; i--)    //numbers 3 -> 1 on terminal
  {
    println(i);
  }
}

//new
void LogoLeft() {
  background(255);

  noStroke();
  fill(255);
  rect(0, 0, 800, 1600);  //background rectangle
  fill(0);
  triangle(470, 250, 400, 650, 350, 250); //center
  triangle(462, 350, 670, 251, 480, 250); //right up
  triangle(462, 350, 628, 350, 670, 250); //right down
  fill(255);
  ellipse(630, 370, 50, 50);       //white circle under 4
  fill(0);
  triangle(340, 250, 373, 500, 200, 250); //left
  triangle(635, 340, 434, 500, 553, 350); //right down down
  fill(0);

  ellipse(557, 350, 50, 50);       //black small circle 1
  fill(255);
  ellipse(502.11, 346, 85, 85);      //white curving circle left 2
  fill(255);
  ellipse(638, 270, 75, 75);      // white circle over big circle 3
  fill(0);
  ellipse(605, 300, 100, 98);     //big curving black circle top right 4
}

void LogoRight()
{
  background(0);

  noStroke();
  fill(0);
  rect(800, 0, 800, 1600);    //background rectangle
  fill(255);
  triangle(470+800, 250, 400+800, 650, 350+800, 250); //center
  triangle(462+800, 350, 670+800, 251, 480+800, 250); //right up
  triangle(462+800, 350, 628+800, 350, 670+800, 250); //right down
  fill(0);
  ellipse(630+800, 370, 50, 50); //black circle under 4
  fill(255);
  triangle(340+800, 250, 373+800, 500, 200+800, 250); //left
  triangle(635+800, 340, 434+800, 500, 553+800, 350); //right down down
  fill(255);

  ellipse(557+800, 350, 50, 50);  //white small circle 1
  fill(0);
  ellipse(502+800.11, 346, 85, 85);  //black curving circle left 2
  fill(0);
  ellipse(638+800, 270, 75, 75);  // black circle over big circle 3
  fill(255);
  ellipse(605+800, 300, 100, 98);  //big curving white circle top right 4
}

void LogoCenter()
{
  image(world, 0, 0);
  zCoordinate=zCoordinate+10;    //background white cirlce size increse by 10
  aCoordinate=aCoordinate+10;    //left text rectangle width coordination increse by 10 to right
  bCoordinate=bCoordinate-10;    //covering black cirlce size decrease by 10
  cCoordinate=cCoordinate-10;    //right text rectangle width coordination decrease by 10 to left
  fill(0);
  rect(0, 0, 1600, 1600);           //background rectangle
  image(world, 0, 0, 1600, 1600);
  strokeWeight(7);
  stroke(0);
  fill(255);
  ellipse(815, 400, zCoordinate, zCoordinate);  //background white circle
  noStroke();
  fill(0);
  triangle(870, 250, 800, 650, 750, 250); //center
  triangle(862, 350, 1070, 251, 880, 250); //right up
  triangle(862, 350, 1028, 350, 970, 250); //right down
  fill(255);
  ellipse(1030, 370, 50, 50);      //white circle under 4
  fill(0);
  triangle(740, 250, 773, 500, 600, 250); //left
  triangle(1035, 340, 834, 500, 953, 350); //right down down
  fill(0);

  ellipse(957, 350, 50, 50);    //black small circle 1
  fill(255);
  ellipse(902, 346.11, 85, 85);    //white curving circle left 2
  fill(255);
  ellipse(1038, 270, 75, 75);    // white circle over big circle 3
  fill(0);
  ellipse(1005, 300, 100, 98);    //big curving black circle top right 4
  fill(0);
  ellipse(815, 400, bCoordinate, bCoordinate);  //big black covering circle
  fill(255);
  strokeWeight(4);
  stroke(0);
  rect(0, 750, aCoordinate, 150);      //left text rectangle
  rect(1600, 750, cCoordinate, 150);   //right text rectangle

  if (zCoordinate>590)
  {
    zCoordinate=590;   //background white circle stops increasing in size at 590
  }
  if (bCoordinate<=0)
  {
    bCoordinate=0;   //covering black circle stops decreasing in size at 0
  }
}



//////////////////////////////////////////////


void draw()
{
  if (mouseX < 800)

    LogoLeft();


  else if (mouseX > 800)
  {
    LogoRight();
  }
  if (mousePressed)
  {
    if (mouseButton == LEFT)
    {
      LogoCenter();
    }
    if (key == 's')

    {
      fill(0);
      textSize(170);
      text("19 .", 150, 885);
    } 
    if (key == 'o')
    {

      fill(0);
      textSize(170);
      text("19 .", 150, 885);
      fill(0);
      textSize(170);
      text("15 . 15 .", 500, 885);
    }
    if (key == 'n')
    {
      fill(0);
      textSize(170);
      text("19 .", 150, 885);
      fill(0);
      textSize(170);
      text("15 . 15 .", 500, 885);
      fill(0);
      textSize(170);
      text("  14", 1150, 885);
    }
  }
}
void keyPressed()
{
  if (key == 's')

  {
    print("S");
  } 
  if (key == 'o')
  {
    print("OO");
  }
  if (key == 'n')
  {
    print("N");
  }
}
