  class star{
  float x1,y1,x2,y2,x3,y3,x4,y4,x5,y5,x6,y6,x7,y7,x8,y8,x9,y9,x10,y10;
  star(float x1, float y1){
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x1 + 5;
    this.y2 = y1 + 20;
    this.x3 = x2 + 17;
    this.y3 = y2;
    this.x4 = x3 - 14;
    this.y4 = y3 + 10;
    this.x5 = x4 + 5;
    this.y5 = y4 + 16;
    this.x6 = x5 - 13;
    this.y6 = y5 - 10;
    this.x7 = x6 - 13;
    this.y7 = y6 + 10;
    this.x8 = x7 + 5;
    this.y8 = y7 - 16;
    this.x9 = x8 - 15;
    this.y9 = y8 - 10;
    this.x10 = x9 + 18;
    this.y10 = y9;
   }

  void display(){
    strokeWeight(2);
    fill(255,215,0); //gold
    beginShape();
    vertex(x1,y1);
    vertex(x2,y2);
    vertex(x3,y3);
    vertex(x4,y4);
    vertex(x5,y5);
    vertex(x6,y6);
    vertex(x7,y7);
    vertex(x8,y8);
    vertex(x9,y9);
    vertex(x10,y10);
    vertex(x1,y1);
    endShape(CLOSE);
  }

  void changeColor(){
    strokeWeight(2);
    fill(192,192,192); //silver
    beginShape();
    vertex(x1,y1);
    vertex(x2,y2);
    vertex(x3,y3);
    vertex(x4,y4);
    vertex(x5,y5);
    vertex(x6,y6);
    vertex(x7,y7);
    vertex(x8,y8);
    vertex(x9,y9);
    vertex(x10,y10);
    vertex(x1,y1);
    endShape(CLOSE);
  }
  
  void defaultColor(){
    strokeWeight(2);
    fill(255,215,0); //gold
    beginShape();
    vertex(x1,y1);
    vertex(x2,y2);
    vertex(x3,y3);
    vertex(x4,y4);
    vertex(x5,y5);
    vertex(x6,y6);
    vertex(x7,y7);
    vertex(x8,y8);
    vertex(x9,y9);
    vertex(x10,y10);
    vertex(x1,y1);
    endShape(CLOSE);
  }
}
