
class michan  {
  PImage charac;
 float x,y,s=40;
 int score;
 boolean pressed;
 wining instance4 =  new wining();

 void newbgset(){
  textAlign(CENTER);
  textSize(35);
   mine();
 
}
void mine(){
  charac = loadImage("michan.png");
if(!pressed && mousePressed ){
pressed = true;
if(mouseX > x-(s/2) && mouseY > y-(s/2) && mouseY < y +(s/2))
{
score++;
randomPos();

}
else{
reset();
}

}
if(pressed && !mousePressed){
pressed =false;
}
//ellipse(x,y,s,s);
image(charac, x-90, y-90);
text("Score"+ score, width/2, 40);
if(score>3){
instance4.win();
}
}

void reset()
{
x= width/2;
y=height/2;
score = 0;
}

void randomPos(){
x = random(s/2,width-(s/2));
y = random(s/2,height-(s/2));
}

}
