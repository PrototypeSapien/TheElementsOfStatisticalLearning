class Point {
  float x, y;
  color c;
  float dist;

  Point(float x, float y, color c) {
    this.x = x;
    this.y = y;
    this.c = c;
  }

  float distance(Point p) {
    this.dist = sqrt(sq(this.x - p.x) + sq(this.y - p.y)); 
    return dist;
  }

  void show() {
    fill(c);
    stroke(0);
    circle(x, y, 5);
  }
}

class PointComparator implements Comparator <Point> {
  @Override
  public int compare(Point a, Point b) {
    // TODO Auto-generated method stub
    return (int) (a.dist - b.dist);
  }
}
