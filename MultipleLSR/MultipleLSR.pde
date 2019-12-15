// This is my attempt at programming multiple linear regression
import Jama.*;

Matrix y, x, b, xt;

void setup() {
  double[][] temp = {{100}, {90}, {80}, {70}, {60}};
  y = new Matrix(temp);
  
  double[][] temp2 = {{1, 110, 40}, {1, 120, 30}, {1, 100, 20}, {1, 90, 0}, {1, 80, 10}};
  x = new Matrix(temp2);
  
  xt = x.transpose();
  
  b = (xt.times(x).inverse()).times(xt).times(y);
  
  b.print(0,1);
}

void draw() {
  
}
