class Point {
  int x, y;
  Point(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  void show() {
    fill(0, 255, 0);
    circle(x, y, 5);
    noFill();
    circle(x, y, 5);
  }
}
