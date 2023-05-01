PImage bg, doremon, turtle,monster;
int bgx, bgy, charx,chary, velocity, charvx,charvy;
int[] monsterarray,turtlearray ;
int game, score, count;
long timing,elpsedtime;
level2 instance;
wining instance2;

void setup() {
  
size(800,550);
bg = loadImage("bg.jpeg");
doremon=loadImage("doremon1.png");
monster=loadImage("mudmonster.png");
turtle=loadImage("turtle.png");

 charx=100;
 chary=50;
 velocity=1;
 
 timing = System.currentTimeMillis();
 instance= new level2();
 instance2=new wining();
 monsterarray = new int[3];
 
 for(int i=0;i<monsterarray.length;i++){
 monsterarray[i]=width+150*i;
 }
 
 
}

void draw(){
 elpsedtime= System.currentTimeMillis()-timing;

  
 bgback();

 monster();
 doremon();

 if (elpsedtime>5000 && count <40 ){
//text("You Won!!",20,100);

instance.newbgset();

}
else if (game==1){
fill(0);
text("you hit 60 times mouse click in 2 minutes",300,200);
}




text(40-count+" click left",200,80);
double seconds = (double) elpsedtime / 1000;
text("time" + seconds,100,200);


 

}


void mousePressed(){
charvy=-15;

count++;

if(count >300){
  
game=3;

}

}

//make it fast keyboard function try------------

void bgback(){

//set bg
image(bg,bgx,bgy);
image(bg,bgx+bg.width,bgy);
//make the bg move
bgx=bgx-1;
if(bgx<-bg.width){
bgx=1;



}

//finish setting bg
}


void doremon()
{
image(doremon,charx,chary);
//accelaerate doremon
chary=chary+charvy;
charvy=charvy+velocity;


}

void monster(){
image(turtle,130,400);

for(int i=0;i<monsterarray.length;i++){
 image(monster,monsterarray[i],400);
monsterarray[i] -=2;
if(monsterarray[i]<-200){
monsterarray[i]=width;
}
if(charx > monsterarray[i] && charx < monsterarray[i]+60)
{
  if(chary >monsterarray[i]+50 && chary < monsterarray[i]+50){
  game=1;
  }
}
if(charvy>50){
game=1;
}
 }
}
