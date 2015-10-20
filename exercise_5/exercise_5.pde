color s1 = color(60, 189, 64); //colors
color s2 = color(59, 220, 64);

color s3 = color(159, 120, 264);
color s4 = color(259, 120, 164);

color s5 = color(255, 120, 164);
color s6 = color(255, 20, 255);

color s7 = color(40, 40, 255);
color s8 = color(105, 80, 185);



void setup(){
  background(255);
  size(800, 800);
  
}

void draw()  {    
  background(255);  
  Monster Jack = new Monster(10, 10, s1, s2, s1);
  Jack.monsterBody(width/2+10, width/2+10, 100, 200, s2);
  Jack.head(width/2+10, width/2 - 120 + 10, 100, 80, s1);
  Jack.eye(width/2-10, width/2-120, 20, 20, s2, 0);
  
  Monster Al = new Monster(10, 10, s3, s4, s2);
  Al.monsterBody(100, 200, 100, 200, s3);
  Al.head(100, 100, 100, 80, s4);
  Al.eye(80, 90, 20, 20, s3, 0);
  
  Monster Jason = new Monster(10, 10, s1, s2, s1);
  Jason.monsterBody(600, 200, 200, 200, s1);
  Jason.head(600, 100, 200, 80, s4);
  Jason.eye(580, 90, 20, 20, s2, 0);
  
  Monster Ann = new Monster(10, 10, s1, s2, s5);
  Ann.monsterBody(600, 600, 200, 300, s6);
  Ann.head(600, 460, 200, 80, s3);
  Ann.eye(580, 450, 20, 20, s5, 0);
 
  Monster Sue = new Monster(10, 10, s1, s2, s7);
  Sue.monsterBody(140, 600, 250, 200, s8);
  Sue.head(140, 460, 100, 180, s7);
  Sue.eye(120, 450, 20, 20, s6, 0);
}   




class Monster {
  
   //declare variables or data types
  int w = 800;
  int ang = 45;
  private color skin1, skin2, blink, wort;    // no accessible outside the class. Only internally.
  float x, y, wanderX, wanderY, percentScale;  // accessible outside the class, using the dot syntax
  boolean button;
  //color a1, a2, a3, a4;
  
  // this is the class constructor. this is called
  // with the "new" line in the main code
  Monster(float tempX, float tempY, color sk1, color sk2, color wort_) {
    // here, we are exchanging the values passed in for their local names
    // this ensures better use and control of variables - ie, what can
    // change a variable and what can't at any given time
    
    skin1 = sk1;
    skin2 = sk2;
    blink = sk1;
    wort = wort_;
    x = tempX;
    y = tempY;
    //color a1, a2, a3, a4;
    
  }
  
  // all the methods go below the constructor
  void monsterBody(int x, int y, int wide, int tall, color a1) {
    smooth();

    curve(w/2 - 100 + x, w/2-100 + y, w/2 - 50 + x, w/2-200 + y, w/2 + 10 + x, w/2 -100 + y, w/2 -20 + x, w/2 + 20 + y); //left antenna
    curve(w/2 + 120 + x, w/2-80 + y, w/2 + 50 + x, w/2-200 + y, w/2 - 10 + x, w/2 - 100 + y, w/2 -20 + x, w/2 + 40 + y); //right antenna
    fill(a1); //darker green
    ellipse(x, y, wide, tall); //body  120, 160
    fill(wort); // purple
    noStroke(); 
    ellipse(w/2 - 20 + x, w/2 + 30 + y, 20, 10);  //wart
  }
  
  void head(int x, int y, int w, int h, color a2){
   //head
  fill(a2); // lighter green
  stroke(255); 
  ellipse(x, y, w, h); //head
  fill(0);
  rect(x-30, y + 20, 60, 1); //mouth
  fill(255);
 
  fill(a2); //lighter green
  ellipse(x-40, y-30, 20, 20); // left ear
  ellipse(x+40, y-30, 20, 20); // right ear
  noFill();
   
  }
  
  void eye(int x, int y, int w, int h, color a3, color a4){
    //eye
  fill(a3); //greenish yellow
  ellipse(x, y, w, h); //left eye
  ellipse(x+35, y, w, h); //right eye
  fill(a4);
  ellipse(x, y, w-15, h-15); //left pupil
  ellipse(x+35, y, w-15, h-15); //right pupil
  noFill();
    
  }
  
  
}




/*
int w = 800;
int ang = 45;
float wanderX = 0;
float wanderY = 0;
float x, y;
color s1 = color(60, 189, 64); //greenish yellow
color s2 = color(59, 220, 64); //lighter green
color blink = s1;
color wort = color(181, 35, 203); // purple wart

void setup() {
  background(255);
  size(800, 800);
}

void draw() {
  background(255);
  
  //Monster Body
  smooth();

  curve(w/2 - 100 + x, w/2-100 + y, w/2 - 50 + x, w/2-200 + y, w/2 + 10 + x, w/2 -100 + y, w/2 -20 + x, w/2 + 20 + y); //left antenna
  curve(w/2 + 120 + x, w/2-80 + y, w/2 + 50 + x, w/2-200 + y, w/2 - 10 + x, w/2 - 100 + y, w/2 -20 + x, w/2 + 40 + y); //right antenna
  fill(59, 275, 64); //darker green
  ellipse(w/2 + x, w/2 + y, 120, 160); //body
  fill(wort); // purple
  noStroke(); 
  ellipse(w/2 - 20 + x, w/2 + 30 + y, 20, 10);  //wart
  
  //head
  fill(59, 220, 64); // lighter green
  stroke(0); 
  ellipse(w/2 + x, w/2 - 120 + y, 100, 80); //head
  fill(0);
  rect(w/2 - 25 + x, w/2 - 105 + y, 60, 1); //mouth
  fill(255);
  triangle(w/2 + 15 + x, w/2 - 90 + y, w/2 + x, w/2-105 + y, w/2 + 30 + x, w/2 - 105 + y); //tooth
 
  fill(60, 189, 64); //lighter green
  ellipse(w/2 - 50 + x, w/2 - 200 + y, 20, 20); // left antenna point
  ellipse(w/2 + 50 + x, w/2 - 200 + y, 20, 20); // right antenna point
  noFill();
  
  
  
  //eye
  fill(193, 255, 64); //greenish yellow
  ellipse(w/2 - 15 + x, w/2 - 120 + y, 15, 15); //left eye
  ellipse(w/2 + 25 + x, w/2 - 120 + y, 15, 15); //right eye
  fill(0);
  ellipse(w/2 - 15 + 0 + x, w/2 - 120 + 0 + y, 5, 5); //left pupil
  ellipse(w/2 + 25 + 0 + x, w/2 - 120 + 0 + y, 5, 5); //right pupil
  noFill();
}*/