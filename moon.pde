class moon{
  void display(){
    PShape moon = createShape(GROUP);
    fill(191, 190, 211);
    noStroke();
    PShape body = createShape(ELLIPSE, 40,120,80, 80);

    moon.addChild(body);

    shape(moon,centerX - radiusOfTraverse * cos(1.0 * angleOfTheMoon / maxAngle * TWO_PI),centerY
      - radiusOfTraverse * sin(1.0 * angleOfTheMoon / maxAngle * TWO_PI));
  }
}
