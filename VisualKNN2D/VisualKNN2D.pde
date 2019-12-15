// 2D K-Nearest Neighbors
import java.util.Collections;
import java.util.Comparator;

ArrayList<Point> points = new ArrayList<Point>();
int k;
int numPoints;
int numCat;
color c;

void setup() {
  size(500, 500);
  
  k = 1;
  c = color(random(0, 255), random(0, 255), random(0, 255));
  numPoints = 0;
  numCat = 1;
}

void draw() {
  if (numPoints > 0) {
    for (int i = 1; i < width; i+=3) {
      for (int j = 1; j < height; j+=3) {
        Point currPoint = new Point(i, j, 0);
        stroke(detColor(currPoint));
        fill(detColor(currPoint));

        square(i-1, j-1, 3);
      }
    }
  }

  for (Point p : points) {
    p.show();
  }
}

color detColor(Point origin) {
  //Find all the distances from the points to the pixel
  for (Point p : points) {
    p.distance(origin);
  }
  
  //Sort by smallest distance
  Collections.sort(points, new PointComparator());
  
  //Find occurences of each color within k neighbors
  HashMap<Integer, Integer> clrCnt = new HashMap<Integer, Integer>();
  for(int i = 0; i < k; i++) {
    Point p = points.get(i);
    Integer col = p.c;
    clrCnt.put(col, (clrCnt.get(col) == null) ? 1 : clrCnt.get(col) + 1);
  }
  
  //Find the color associated with highest occurences
  HashMap.Entry<Integer, Integer> maxEntry = null;
  for (HashMap.Entry<Integer, Integer> entry : clrCnt.entrySet()) {
    if (maxEntry == null || entry.getValue() > maxEntry.getValue()) {
        maxEntry = entry;
    }
  }
  
  return maxEntry.getKey();
}



void mousePressed() {
  points.add(new Point(mouseX, mouseY, c));
  numPoints++;
}

void keyPressed() {
  switch(key) {
    case '1':
      k = 1;
      break;
    case '2':
      k = 2;
      break;
    case '3':
      k = 3;
      break;
    case '4':
      k = 4;
      break;
    case '5':
      k = 5;
      break;
    case '6':
      k = 6;
      break;
    case '7':
      k = 7;
      break;
    case '8':
      k = 8;
      break;
    case '9':
      k = 9;
      break;
    case ' ': 
      c = color(random(0, 255), random(0, 255), random(0, 255));
  }
}
