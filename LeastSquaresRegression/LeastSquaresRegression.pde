//This is a simulation of simple linear regression

Point points[];
int currPoint;

void setup() {
  size(500, 500);
  background(255);

  points = new Point[100];
  currPoint = 0;
}

void draw() {
  background(255);

  for (int i = 0; i < currPoint; i++) {
    points[i].show();
  }

  float sX = 0, sY = 0, sX_2 = 0, sXY = 0;

  for (int i = 0; i < currPoint; i++) {
    sX += points[i].x;
    sY += points[i].y;
    sX_2 += sq(points[i].x);
    sXY += points[i].x * points[i].y;
  }
  
  float a = (sY*sX_2 - sX*sXY)/(currPoint*sX_2 - sq(sX));
  float b = (currPoint*sXY - sX*sY)/(currPoint*sX_2 - sq(sX));
  
  line(-width, a + (-width)*b, width, a + width*b);
}

void mousePressed() {
  points[currPoint] = new Point(mouseX, mouseY);
  currPoint++;
}
