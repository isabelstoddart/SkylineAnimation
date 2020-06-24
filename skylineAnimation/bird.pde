class bird{
  float x = 0;
  int numFrames = 2;
  int frame = 0;
  PShape[] shapes = new PShape[numFrames];
  void move(){
    x += 2;
    if(x >= canvasX){
      x = 0;
    }
    frame = frame + 1;
    if(frame >= numFrames){
      frame = 0;
     }
    shape(shapes[frame],x,0);
  }
}

class bat extends bird{
  void display(){
    frameRate(12);
  
    fill(128,128,128);
    PShape bat = createShape(GROUP);
    PShape head = createShape(ELLIPSE,70 + x,20,20 + x,20);
    PShape body = createShape(ELLIPSE,50 + x,30,25 + x,25);
    PShape topWingOne = createShape(TRIANGLE,50 + x,16,38 + x,23,40 + x,10);
    PShape topWingTwo = createShape(TRIANGLE,40 + x,10,34 + x,4,26 + x,16);
    PShape topWingThree = createShape(TRIANGLE,34 + x,4,25 + x,0,20 + x,10);
    PShape bottomWingOne = createShape(TRIANGLE,62 + x,38,52 + x,50,50 + x,36);
    PShape bottomWingTwo = createShape(TRIANGLE,50 + x,36,40 + x,46,46 + x,30);
    PShape bottomWingThree = createShape(TRIANGLE,46 + x,30,30 + x,39,38 + x,26);
    PShape rightEar = createShape(TRIANGLE,76 + x,12,75 + x,10,79 + x,9);
    PShape leftEar = createShape(TRIANGLE,68 + x,10,65 + x,12,66 + x,5);
    bat.addChild(head);
    bat.addChild(body);
    bat.addChild(topWingOne);
    bat.addChild(topWingTwo);
    bat.addChild(topWingThree);
    bat.addChild(bottomWingOne);
    bat.addChild(bottomWingTwo);
    bat.addChild(bottomWingThree);
    bat.addChild(rightEar);
    bat.addChild(leftEar);
  
  
    fill(128,128,128);
    PShape bat2 = createShape(GROUP);
    PShape head2 = createShape(ELLIPSE,70 + x,20,20 + x,20);
    PShape body2 = createShape(ELLIPSE,50 + x,30,25 + x,25);
    PShape topWingOne2 = createShape(TRIANGLE,50 + x,16,40 + x,22,40 + x,12);
    PShape topWingTwo2 = createShape(TRIANGLE,40 + x,12,30 + x,11,32 + x,23);
    PShape topWingThree2 = createShape(TRIANGLE,30 + x,11,22 + x,10,26 + x,21);
    PShape bottomWingOne2 = createShape(TRIANGLE,60 + x,39,56 + x,50,50 + x,39);
    PShape bottomWingTwo2 = createShape(TRIANGLE,50 + x,39,40 + x,39,46 + x,50);
    PShape bottomWingThree2 = createShape(TRIANGLE,40 + x,39,30 + x,39,36 + x,50);
    PShape rightEar2 = createShape(TRIANGLE,76 + x,12,75 + x,10,79 + x,9);
    PShape leftEar2 = createShape(TRIANGLE,68 + x,10,65 + x,12,66 + x,5);
    bat2.addChild(head2);
    bat2.addChild(body2);
    bat2.addChild(topWingOne2);
    bat2.addChild(topWingTwo2);
    bat2.addChild(topWingThree2);
    bat2.addChild(bottomWingOne2);
    bat2.addChild(bottomWingTwo2);
    bat2.addChild(bottomWingThree2);
    bat2.addChild(rightEar2);
    bat2.addChild(leftEar2);
   
    shapes[0] = bat;
    shapes[1] = bat2;
  }
} 
class bluebird extends bird{
  void display(){
    frameRate(12);

    fill(60,205,242);
    PShape bird = createShape(GROUP);
    PShape head = createShape(ELLIPSE,70 + x,20,20 + x,20);
    PShape body = createShape(ELLIPSE,45 + x,30,35 + x,20);
    PShape topWing = createShape(TRIANGLE,40 + x,20,50 + x,20,30 + x,0);
    PShape bottomWing = createShape(TRIANGLE,45 + x,40,55 + x,40,30 + x,20);
    fill(252,135,10);
    PShape beak = createShape(TRIANGLE,80 + x,17.5,82.5 + x,20,80 + x,22.5);
    bird.addChild(head);
    bird.addChild(beak);
    bird.addChild(body);
    bird.addChild(topWing);
    bird.addChild(bottomWing);
    //shape(bird);
  
    fill(60,205,242);
    PShape bird2 = createShape(GROUP);
    PShape head2 = createShape(ELLIPSE,70 + x,20,20 + x,20);
    PShape body2 = createShape(ELLIPSE,45 + x,30,35 + x,20);
    PShape topWing2 = createShape(TRIANGLE,40 + x,20,50 + x,20,30 + x,10);
    PShape bottomWing2 = createShape(TRIANGLE,45 + x,40,55 + x,40,30 + x,30);
    fill(252,135,10);
    PShape beak2 = createShape(TRIANGLE,80 + x,17.5,82.5 + x,20,80 + x,22.5);
    bird2.addChild(head2);
    bird2.addChild(beak2);
    bird2.addChild(body2);
    bird2.addChild(topWing2);
    bird2.addChild(bottomWing2);
  
    shapes[0] = bird;
    shapes[1] = bird2;
  
  }
}