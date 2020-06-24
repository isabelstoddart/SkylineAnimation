class sun{
  PShape Sun[];
  int counter;
  int state;
  
  sun(){
    Sun = new PShape[2];
    Sun[0] = createShape(GROUP);
    Sun[1] = createShape(GROUP);
    fill(244, 226, 66);
    noStroke();
    PShape body = createShape(ELLIPSE, 40,120,80, 80);
    fill(244, 226, 66);
    stroke(0);
    PShape line = createShape(LINE, 40, 70, 40, 40);
    PShape line2 = createShape(LINE, 80, 80, 100, 60);
    PShape line3 = createShape(LINE, 90, 120, 120, 120);
    PShape line4 = createShape(LINE, 80, 160, 100, 180);
    PShape line5 = createShape(LINE, 40, 170, 40, 200);
    PShape line6 = createShape(LINE, 0, 160, -20, 180);     
    PShape line7 = createShape(LINE, -10, 120, -40, 120);
    PShape line8 = createShape(LINE, 0, 80, -20, 60);
    
    Sun[0].addChild(body);
    Sun[0].addChild(line);
    Sun[0].addChild(line2);
    Sun[0].addChild(line3);
    Sun[0].addChild(line4);
    Sun[0].addChild(line5);
    Sun[0].addChild(line6);
    Sun[0].addChild(line7);
    Sun[0].addChild(line8);
    
    Sun[1].addChild(body);
    
    counter = 0;
    state = 0;
  }
  
  void display(){
    
    shape(Sun[state],centerX - radiusOfTraverse * cos(1.0 * angleOfTheSun / maxAngle * TWO_PI),centerY
    - radiusOfTraverse * sin(1.0 * angleOfTheSun / maxAngle * TWO_PI));
    counter++;
    if(counter%10 == 0){
      state = (state+1)%2;
    }
  }
}
