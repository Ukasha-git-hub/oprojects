void main() {
  Area area = Area();

  area.calculateRectangleArea();
  area.calculateAreaOfTriangle();
  area.calculateAreaOfsquare(6, 4);
  area.areaOFCircle(5, 4);
  

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
      double areaOfRectangle = theight ?? 0 * (width ?? 0);
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

  void areaOFCircle(double radius, double diameter) {
    try {
      double areaOfcircle = radius * 2 + diameter;
   
      print(areaOfcircle);
    } catch (e) {
      print(e);
    }
  }
}
