sun sun;
moon moon;
bat bat;
bluebird bluebird;

final int canvasX = 800;
final int canvasY = 600;

int hour;
boolean day;

PImage image;

float centerX, centerY;
float radiusOfTraverse;
float radiusOfTheSun;
float angularSpeedOfTheSun;
float angleOfTheSun;
float angleOfTheMoon;
float maxAngle;
Building buildings[];
House houses[];
star stars1[];
star stars2[];

void setup(){
  image = loadImage("images.jpg");
  surface.setSize(canvasX, canvasY);
 

  day = true;
  sun = new sun();
  moon = new moon();
  
  bat = new bat();
  bluebird = new bluebird();
   
  //control the sun here 
  centerX = canvasX / 2;
  centerY = canvasY;
  radiusOfTraverse = canvasY + 100;
  radiusOfTheSun = 100;
  angularSpeedOfTheSun = 5;
  angleOfTheSun = 0;
  maxAngle = 1000;
  angleOfTheMoon = 500;
  
  buildings = new Building[5];
  buildings[0] = new Building(100, 300, 100, 300, 3, 5, #DFDFDF);
  buildings[1] = new Building(350, 270, 100, 330, 3, 5, #DFDFDF);
  buildings[2] = new Building(200, 200, 200, 400, 5, 7, #DFDFDF);
  buildings[3] = new Building(650, 300, 100, 300, 3, 5, #DFDFDF);
  buildings[4] = new Building(500, 200, 200, 400, 7, 9, #DFDFDF);
  
  houses = new House[5];
  houses[0] = new House(70,500);
  houses[1] = new House(270,500);
  houses[2] = new House(400,500);
  houses[3] = new House(500,500);
  houses[4] = new House(650,500);
  
  
  stars1 = new star[4];
  stars1[0] = new star(100,50);
  stars1[1] = new star(300,50);
  stars1[2] = new star(500,50);
  stars1[3] = new star(700,50);
  
  stars2 = new star[4];
  stars2[0] = new star(200,100);
  stars2[1] = new star(400,100);
  stars2[2] = new star(600,100);
  stars2[3] = new star(-100, -100);
  
  bluebird.display();
  bat.display();
  
}

void draw(){ 
  drawImage();
}

void drawImage(){
 
  if(angleOfTheSun >= 500){
    //display night stuff
    tint(84, 91, 102);
    
    //stars
    if(angleOfTheSun%100 <= 50){
      for(int i = 0; i < stars1.length; i++){
        stars1[i].changeColor();
        stars2[i].defaultColor();
      }
    }
    else{
      for(int i = 0; i < stars1.length; i++){
        stars2[i].changeColor();
        stars1[i].defaultColor();
      }
    }
  }
  //background
  image(image, 0, 0);
  
  //sun and moon
  sun.display();
  moon.display();
  angleOfTheSun = (angleOfTheSun + angularSpeedOfTheSun)% maxAngle;
  angleOfTheMoon = (angleOfTheMoon + angularSpeedOfTheSun)% maxAngle;
  
  if(angleOfTheSun >= 500){
    //bat
    bat.move();
  }
  else{
    //display day stuff
    noTint();
    //bluebird
    bluebird.move();
  }
  
  //buildings
  for(int i = 0; i < buildings.length; i++){
    buildings[i].display(angleOfTheSun < 500);
  }
  
  //houses
  for (int i = 0; i < houses.length; i++){
    houses[i].display(angleOfTheSun < 500);
  }
   
}
