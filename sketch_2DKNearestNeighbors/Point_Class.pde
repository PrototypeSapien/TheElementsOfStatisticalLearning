class Point {
  float x, y;
  
  Point(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  float distance(Point p) {
    return sqrt(sq(this.x - p.x) + sq(this.y - p.y));
  }
}
