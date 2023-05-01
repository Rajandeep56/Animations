class level2 {
PImage fg, alien;
int bx,by, flag;
int[] monsterarray=new int[3]; 
michan instance3 =  new michan();
wining instance4 =  new wining();
long timing,elpsedtime;


void newbgset(){
  elpsedtime= System.currentTimeMillis()-timing;
 fg=loadImage("newbg.png");
 image(this.fg, bx,by);
 image(this.fg,bx+fg.width,by);
 bx=bx-4;
 
  if(bx<-800){
bx=1;
}

instance3.newbgset();
//if(elpsedtime > 15000){
//instance4.win();
//}
comet();
}


void comet(){
 alien=loadImage("alien.png");
  image(this.alien, bx,by);
 bx=bx-10;
  if(bx<-800){
bx=1;
}
}

}
