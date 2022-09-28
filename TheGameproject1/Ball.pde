class Ball{
float posx;
float posy;
float gravity;
float speed;
float radius;

Ball(){
posx = width/2;
posy = height/2;
gravity = 0.1;
radius = 100;
speed = 0;


}

void displayBall(float r, float g, float b){
  stroke(0);
  fill(r,g,b);
ellipse(posx,posy,radius,radius);
 }
 
void move(){
posy = posy + speed;
speed = speed + gravity;
  
if(posy>height){
speed = speed * -1;
//println(speed);
    }
  }
}
