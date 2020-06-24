class Building{
  
  float x; //x corner
  float y; //y corner
  float w; //width
  float h; //height
  int wA;  //windows across
  int wUD; //windows up down
  color c; //color of the building
  Window[][] windows; //array of windows
  
  Building(float x, float y, float w, float h, int wA, int wUD, color c){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.wA = wA;
    this.wUD = wUD;
    this.c = c;
    
    //make windows
    this.windows = new Window[wA][wUD];
    w = w / (1.5 * wA);
    h = h / (1.5 * wUD);
    float xSpace = (this.w - w * wA) / (wA + 1);
    float ySpace = (this.h - h * wUD) / (wUD + 1);
    float saveY = y;
    
    for(int i = 0; i < wA; i++){
      x = x + xSpace;
      y = saveY;
      for(int j = 0; j < wUD; j++){
        y = y + ySpace;
        windows[i][j] = new Window(x, y, w, h);
        y = y + h;
      }
      x = x + w;
    }
  }
  
  void display(boolean day){
    //set options
    if(day){
      fill(c);
    }
    else{
      fill(#2F2F2F);
    }
    stroke(#000000);
    strokeWeight(4);
    
    //draw building
    rect(x, y, w, h);
    
    //draw windows
    for(int i = 0; i < wA; i++){
      for(int j = 0; j < wUD; j++){
        windows[i][j].display(day);
      }
    }
    
    //restore defaults
    fill(#FFFFFF);
    stroke(#000000);
    strokeWeight(1);
  }
}
