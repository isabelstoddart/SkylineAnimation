class House{
  float x1,x2,y1,y2,x3,y3;
  float a,b,c,d;
  House(float x1,float y1){
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x1-70;
    this.y2 = y1+50;
    this.x3 = x1+70;
    this.y3 = y2;
    this.a  = x1-50;
    this.b  = y3;
    this.c = 100;
    this.d = 0.1*y1;
  }

  void display(boolean day){
    if(day){
      fill(168, 156, 141);
      triangle(this.x1,this.y1,this.x2,this.y2,this.x3,this.y3);
      fill(176, 223, 229);
      rect(this.a,this.b,this.c,this.d);
      fill(255,255,255);
      rect(this.a+this.c*1/6,this.b+this.d*1/3,this.c*1/7,this.c*1/7);
      rect(this.a+this.c*4/6,this.b+this.d*1/3,this.c*1/7,this.c*1/7);
    }
    else{
      fill(68, 56, 41);
      triangle(this.x1,this.y1,this.x2,this.y2,this.x3,this.y3);
      fill(76, 123, 129);
      rect(this.a,this.b,this.c,this.d);
      fill(255, 239, 17);
      rect(this.a+this.c*1/6,this.b+this.d*1/3,this.c*1/7,this.c*1/7);
      rect(this.a+this.c*4/6,this.b+this.d*1/3,this.c*1/7,this.c*1/7);
    }
  }
}