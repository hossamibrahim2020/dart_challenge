class RectangleCalculator {
  int height;
  int width;
  RectangleCalculator ({this.height, this.width});
  String rectangelCalculator() {
    try {
      int area = height * width;
      int circumference = (2 * height) + (2 * width);
      return '''
Rectangle area is $area,
Rectangle circumference is $circumference,
    ''';
    } catch(e){
      return 'please rerun app again';
    }
    

  }
}
