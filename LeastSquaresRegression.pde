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
  if(currPoint > 0) {
    for(int i = 0; i < currPoint; i++) {
      points[i].show();
    }
  }
}

void mousePressed() {
  points[currPoint] = new Point(mouseX, mouseY);
  currPoint++;
  //Change Made
}
