class wining  {
int movearm = 2;
int degre = 1;
final int end = 4;
float random = random(90,255);
ArrayList<Snow> snow;
int widesnow = 10;



void win(){
  //fill(255);
keyPressed();

  smooth();
  frameRate(30);
  snow = new ArrayList<Snow>();
  
  // Start by adding one element
  snow.add(new Snow(width/5, 0, widesnow));
   snow.add(new Snow(width/3, 0, widesnow));
    snow.add(new Snow(width/6, 0, widesnow));
  background(85,206,255);

  pushMatrix();
if(mousePressed){
     translate(-frameCount * 2, height/9);}
     doremon();
  movearm += degre;
  
  if (movearm > end || movearm < 0)
  {
     degre = -degre;
    movearm += degre;
  }
  
  popMatrix();
 
 if(mousePressed){
     translate(-frameCount * 2, height/9);}
   thread();
 blackpupil();
 pupil();
  baloon();
  

  
  
  for (int i = snow.size()-1; i >= 0; i--) { 
    // An ArrayList doesn't know what it is storing so we have to cast the object coming out
    Snow snowing = snow.get(i);

    snowing.move();
    snowing.display(21);

    
    
  }  
   for(int i =0;i<20;i++){
  snow.add(new Snow(mouseX, mouseY, widesnow));  
  }
  
}



void doremon()
{
  //noStroke();
  
  hiarm();
  // Draw the head
  fill(85,206,255);
  ellipse(200, 200, 200, 200);
  //inner white portion
   fill(255,250,255);
   ellipse(200, 225, 170, 150);

  
  // Draw the eyes
  fill(255, 255, 255);
  //left eye ball
  ellipse(175, 160, 45, 70);
  //right eye ball
  ellipse(220, 160, 45, 70);
  // Draw the pupils
  fill(0, 0, 0);
  //left black pupil
  //ellipse(180, 165, 10, 20);
  //right pupil
  //ellipse(220, 165, 10, 20);
 // blackpupil();
  
   // Draw the nose
  fill(220,20,60);
   ellipse(198, 190, 25, 25);
     fill(102,0,0);
   ellipse(199, 194, 12, 13);
  fill(255, 255, 255);
   ellipse(194, 187, 11, 11);

// Draw the line
line(195,250,195,200);
//left side
//line(75,195,175,205);
line(75,180,155,200);
line(85,210,155,210);
line(95,230,155,215);

//right side

line(235,200,295,180);
line(235,210,305,200);
line(235,215,305,220);

// Draw the mouth
fill(102,0,0);
  arc(200, 220, 120, 140, 0, PI, CHORD);
    
   fill(220,20,60);
   ellipse(205, 270, 42, 40);
   fill(220,20,60);
   ellipse(190, 270, 42, 40);
   
   //bell
 fill(255, 255, 255);
   ellipse(195, 350, 135, 120);
fill(102,0,0);
 rect(155, 290, 80, 10);
fill(246,190,0);
  ellipse(200, 303, 25, 25);
  fill(139,128,0);
  ellipse(200, 304, 7, 7);
line(200,305,200,316);


line(205,295,195,295);
line(189,299,195,295);
line(215,299,205,295);

line(205,298,195,298);
line(188,302,195,298);
line(210,300,205,298);


//draw arms
  fill(85,206,255);
triangle(60,340,133,307,126,330);
 fill(85,206,255);
fill(255, 255, 255);
//hands
   ellipse(55, 345, 42, 40);
   
   // Draw the pockets
  fill(255, 193, 193);
  //rect(150, 300, 50, 50);
  //rect(250, 300, 50, 50);
  
  // Draw the body
  fill(85,206,255);
  //rect(175, 300, 50, 100);
  //left body lines
  line(130,310,155,295);
  line(130,310,110,375);
  line(110,370,120,430);

//right body lines
  line(270,310,235,298);
  line(270,310,290,375);
  line(290,370,270,430);
  
  //legs
    line(120,430,190,430);
    line(210,430,272,430);
  //leg gap
      fill(255, 255, 255);

    triangle(200,410,210,430,190,430);
   
  //pocket
      fill(255, 255, 255);

  arc(195, 345, 90, 90, 0, PI, CHORD);

  // Draw the feet
  fill(255, 255, 255);
  ellipse(152, 430, 95, 40);
  ellipse(249, 430, 95, 40);
  
    
}

void hiarm()
{
  pushMatrix();
 // translate(66, 32);
  rotate(radians(-movearm));
  fill(85,206,255);

 triangle(370,225,245,297,276,315);
  fill(255,255,255);
   ellipse(360, 225, 42, 40); // right arm
  popMatrix();
}
void pupil()
{
  pushMatrix();
  rotate(radians(-movearm));
  fill(255, 255, 255);
  ellipse(182, 166, 5, 5);
  ellipse(222, 166, 5, 5); 
  popMatrix();
}
void blackpupil()
{
  pushMatrix();
  rotate(radians(-movearm));
  
  fill(0);
  //left black pupil
  ellipse(180, 165, 10, 20);
  //right pupil
  ellipse(220, 165, 10, 20);
  
  popMatrix();
}

void baloon(){
  pushMatrix();
  rotate(radians(movearm));
fill(255,78,4,65);
ellipse(400, 35, 80, 100);
fill(random*7-95);
ellipse(410, 25, 20, 10);
fill(random*2);
ellipse(415, 5, 20, 30);
fill(204,255,204);
ellipse(400, 5, 10, 10);
fill(229,255,204);
ellipse(395, 15, 20, 30);
fill(255,204,204);
ellipse(375, 38, 10, 60);
fill(0.76,153);
ellipse(405, 60, 20, 50);
fill(random-204,229,255);
ellipse(409, 25, 50, 30);
fill(204,0,102);
ellipse(400, 68, 15, 30);
popMatrix();
}

void thread(){
stroke(0);
pushMatrix();
  rotate(radians(-movearm));
line(400,50,360, 225);
popMatrix();
}


    
    
    
class Snow {
  
  float x;
  float y;
  float speed;
  float gravity;
  float w;
  float life = 255;
  
  Snow(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
    gravity = 1;
  }
  
    void move() {
    // Add gravity to speed
    speed = speed/6 + gravity;
    // Add speed to y location
    y = y +  speed ;
    // If square reaches the bottom
    // Reverse speed
    if (y > height) {
      // Dampening
      speed = speed * 150;
      y = height;
    }
  }
  
  
  
  void display(int w) {
    fill(255);
    ellipse(x,y,w,w);
    ellipse(x-50,y,w,w);
    ellipse(x-60,y+w/2,w,w);
    ellipse(x-80,y/2,w,w);
    if(w>10){
    display(w-4);
    w--;
    }
    if(w>20){
    display(w-9);
    w=w-10;
    }
  }
  
}

void keyPressed(){
if(key =='a'){
exit();
}
}

}
