// 2D K-Nearest Neighbors
import java.util.Collections;
import java.util.Comparator;

ArrayList<Point> points = new ArrayList<Point>();
int numPoints;
int numCat;
color c;

void setup() {
  size(500, 500);

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
  for (Point p : points) {
    p.distance(origin);
  }

  Collections.sort(points, new PointComparator());

  return points.get(0).c;
}

void mousePressed() {
  points.add(new Point(mouseX, mouseY, c));
  numPoints++;
}

void keyPressed() {
  if (key == ' ') {
    c = color(random(0, 255), random(0, 255), random(0, 255));
  }
}
