class Baloon{
float r;
float posx;
float posy;
float R,G,B;
boolean hit = false;

Baloon(){
r = 20;
posx = random(100,width);
posy = random(400,height);
R = random(1,255);
G = random(1,255);
B = random(1,255);


}

void displayBaloon(float x, float y){
  x = posx;
  y = posy;
  Balooncolor();
  ellipse(x,y,r,r);
}

void move(){
posy = posy -1-random(-1,1);
posx = posx +random(-2,2);
}

void top(){
if(posy < 0){
 posy = height; 
  }
 }
 
 
 void reset(){
hit = true;
} 

void BaloonDisappear(skud s){
 if(R<255 && G<255 && B<255){
  fill(255);
 R = 255;
 G = 255;
 B = 255;
 
 //Makes counter and prints it to keep track on baloons hit.
 Counter = Counter + 1;
 println(Counter);
 
 //resets shot when baloon hit
 s.reset();
 }
 
}

void Balooncolor(){
fill(R,G,B);  
 }
}
