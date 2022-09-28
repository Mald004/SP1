class Guns{
float posx;
float posy;
  
Guns(){

  
}

void displayguns(float x, float y){
fill(255,0,0);
stroke(0);
rect(width/2-x,height/2-y,50,30); 
fill(0);
ellipse(width/2-x+50,height/2-y+25,5,15);
}
}
