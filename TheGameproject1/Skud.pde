class skud{
float speed;
float xpos1;
float ypos1;
float speed2;
float r;

boolean shot;

skud(){
speed = 0;
speed2 = 0;
xpos1 =  0;
ypos1 =  0;
shot = false;
r = 15;

}

void displaySkud(float x,float y){
  fill(255,0,0);
  noStroke();
  xpos1 = x; 
  ypos1 = y;
  
  
//Skud
ellipse(width/2-x-speed,height/2-y+25,r,r);

}

void Fire(){
 if(shot == true){
speed = speed - 10;
   }
   
if(mousePressed){
    shot=true;
   
   }
   
  if(width/2-xpos1-speed>width){
 reset();
  }
   
  }
  
  // resets skud
  void reset(){
  {
  speed = 0;
  shot = false;
  }
    }
    
  
   boolean intersect(Ball b) {
    // Calculate distance
    float distance = dist(width/2-xpos1-speed, height/2-ypos1+25, b.posx, b.posy); 

    // Compare distance to sum of radii
    if (distance < r + b.radius) { 
      return true;
    } else {
      return false;
    }
  }  
  
    boolean intersectB(Baloon b) {
    // Calculate distance
    float distance = dist(width/2-xpos1-speed, height/2-ypos1+25, b.posx, b.posy); 

    // Compare distance to sum of radius
    if (distance < r + b.r) { 
      return true;
    } else {
      return false;
    }
  } 
  
 }
