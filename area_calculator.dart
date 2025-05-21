void main() {
  Area area = Area();

  area.calculateRectangleArea();
  area.calculateAreaOfTriangle();
  area.calculateAreaOfsquare(6, 4);
}

class Area {
  double? height;
  double? width;
  double? area;
  double? radius;
  double? diameter;
  void calculateRectangleArea() {
    print(width);

    try {
      double theight = height ?? 0;
      double twidth = width ?? 0;
      // if (width == null) {
      //   print("width cannot be nill");
      //   width = 3;

      // }
      double areaOfRectangle = height ?? 0 * (width ?? 0);
      // double AreaOfRectangle = height! * width!;
      print("area :" + areaOfRectangle.toString());
    } catch (e) {
      print(e);
    }
  }

  void calculateAreaOfTriangle() {
    try {
      double theight = height ?? 3;
      double twidth = width ?? 6;

      double areaOfTriangle = theight * twidth / 2;
      print(areaOfTriangle);
    } catch (e) {
      print(e);
    }
  }

  void calculateAreaOfsquare(double height, double width) {
    double areaOfSquare = height * width;
    print(areaOfSquare);
  }
}
