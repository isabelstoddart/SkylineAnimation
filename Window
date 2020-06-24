class Window{
 
  float x;     //x position
  float y;     //y position
  float w;     //width
  float h;     //height
  color glass; //glass color
  color edge;  //edge color
  float edgeWidth;
  
  //default constructor
  Window(float x, float y, float w, float h){
    this(x, y, w, h, #99D9EA, #000000, 3);
  }
  
  //full constructor
  Window(float x, float y, float w, float h, color glass, color edge, float edgeWidth){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.glass = glass;
    this.edge = edge;
    this.edgeWidth = edgeWidth;
  }
  
  void display(boolean day){
    //set options
    if(day){
      fill(glass);
    }
    else{
      fill(#5999AA);
    }
    stroke(edge);
    strokeWeight(edgeWidth);
      
    //draw
    rect(x, y, w, h);
    
    //restore defaults
    fill(#FFFFFF);
    stroke(#000000);
    strokeWeight(1);
  }
  
}
