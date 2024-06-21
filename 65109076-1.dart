import 'dart:math';

//1
calculateTriangleArea(double sideA, double sideB, double sideC) {
  if (sideA <= 0 || sideB <= 0 || sideC <= 0) {
    print("Error: All side lengths must be positive numbers.");
  }

  if (sideA + sideB <= sideC || sideA + sideC <= sideB || sideB + sideC <= sideA) {
    print("Error: The given sides do not form a triangle.");
  }

  double semiPerimeter = (sideA + sideB + sideC) / 2;
  double area = sqrt(semiPerimeter *(semiPerimeter - sideA) *(semiPerimeter - sideB) * (semiPerimeter - sideC));

  print(area);
  return(area);
}

void main() {
  double sideA = 3;
  double sideB = 4;
  double sideC = 5;
  calculateTriangleArea(sideA,sideB,sideC);
  
}
