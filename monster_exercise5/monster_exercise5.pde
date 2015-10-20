color s1 = color(60, 189, 64); //the colors that we call for the object instances
color s2 = color(59, 220, 64);
color s3 = color(159, 120, 264);
color s4 = color(259, 120, 164);
color s5 = color(255, 120, 164);
color s6 = color(255, 20, 255);
color s7 = color(40, 40, 255);
color s8 = color(105, 80, 185);

void setup(){
  size(1600, 1600);
  backgrnd();  
}

void draw(){
    //rect(320, 150, 20, 75); REF
    backgrnd(); 
    Monster Jack = new Monster(320, 150, s1, s6, 20, 75);  //first instance
    Jack.neck();
    Jack.head();
    Jack.necktie();
    Jack.torso();
    Jack.thigh();
    Jack.lower_leg();
    Jack.arm();
    Jack.eye();
       
    Monster Al = new Monster(620, 120, s3, s8, 30, 55); //second instance
    Al.neck();
    Al.head();
    Al.necktie();
    Al.torso();
    Al.thigh();
    Al.lower_leg();
    Al.arm();
    Al.eye();
    
    Monster Ella = new Monster(470, 450, s7, s4, 20, 75); //third instance
    Ella.neck();
    Ella.head();
    Ella.necktie();
    Ella.torso();
    Ella.thigh();
    Ella.lower_leg();
    Ella.arm();
    Ella.eye();
    
    Monster John = new Monster(870, 450, s1, s8, 20, 95); //fourth instance
    John.neck();
    John.head();
    John.necktie();
    John.torso();
    John.thigh();
    John.lower_leg();
    John.arm();
    John.eye();
    
    Monster Ben = new Monster(1070, 150, s5, s2, 40, 85); //fifth instance
    Ben.neck();
    Ben.head();
    Ben.necktie();
    Ben.torso();
    Ben.thigh();
    Ben.lower_leg();
    Ben.arm();
    Ben.eye();
}
    
class Monster {
      
      int x, y, w, h; //variables within the class for coordinates, width, height
      color c1, c2;  //for colors
    
  // this is the class constructor. We make new object instances with this. 
  Monster(int tempX, int tempY, color s1, color s2, int tempW, int tempH) {
    // here, we are exchanging the values passed in for their local names
    // this ensures better use and control of variables 
    c1 = s1;
    c2 = s2;
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    
  }
  
//all the methods are below
void neck(){
   //neck
  fill(c1);
  //rect(320, 150, 20, 75); for reference
  rect(x, y, w, h);
}

void head(){
  //head
  ellipseMode(CENTER);
  fill(c2);
  ellipse(x-20, y-30, w+100, h+45);
}

void necktie(){
  //necktie
  beginShape();
  fill(c2);
  curveVertex(x-240, y-130);
  curveVertex(x+40, y+10);
  curveVertex(x-40,y+70);
  curveVertex(x+360, y+230);
  endShape();
}

void torso(){
  //torso 
  fill(c1);
  ellipse(x+10, y+125, w+60, h+75);
}

void thigh(){
  //thigh
  beginShape();
  fill(c2);
  vertex(x+30, y+190);
  vertex(x+20, y+170);
  vertex(x-20, y+190);
  vertex(x-30, y+310);
  vertex(x, y+310);
  endShape();
}

void lower_leg(){
  //lower_leg
  beginShape();
  fill(c1);
  vertex(x-30, y+300);
  vertex(x-10, y+280);
  vertex(x+10, y+300);
  vertex(x+10, y+310);
  vertex(x+10, y+310);
  vertex(x+20, y+450);
  endShape();
}

void arm(){
  //arm
  beginShape();
  fill(c2);
  vertex(x+10, y+90);
  vertex(x+10, y+70);
  vertex(x+30, y+90);
  vertex(x+60, y+230);
  vertex(x+60, y+230);
  vertex(x+45, y+280);
  endShape();
}

void eye(){
  //eye
  fill(c1);
  ellipse(x-50, y-40, w+10, h-45);    
}

}

void backgrnd(){
  background(40, 40, 60);
}