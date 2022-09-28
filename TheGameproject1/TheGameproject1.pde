Ball Ball;

Guns Guns0;
Guns Guns1;

skud skud;
skud skud1;

Timer timer;

// sets Amount of baloons
Baloon[] Baloons = new Baloon[40];


float r = 255;
float g = 255;
float b = 255;
int i;
int Counter;
PFont f;

void setup(){
  size(700,700);
  
  timer = new Timer(0);
  
// Makes a font to write text on screen
f = createFont("Arial",5,true);


Ball = new Ball();

Guns0 = new Guns();
Guns1 = new Guns();

skud = new skud();
skud1 = new skud();



for(i = 0; i < Baloons.length;i++){
Baloons[i] = new Baloon();
}
}


void draw(){
background(255);

//The timer set to count up
timer.countUp();
fill(0);
//Text to display time
text(timer.getTime(),10,10);


//Displays text and stops game when all baloons are hit.
if(Counter == Baloons.length){
  textFont(f, 20);
  textAlign(CENTER);
  fill(0);
  text("Your time "+timer.getTime(), width/2, height/2);
  noLoop();
}

for(i = 0; i < Baloons.length;i++){
Baloons[i].displayBaloon(0,0);
Baloons[i].move();
Baloons[i].top();

// When the shot hits the baloons disappear
if(skud1.intersectB(Baloons[i])){
  
  Baloons[i].BaloonDisappear(skud1);
  
}


if(skud.intersectB(Baloons[i])){
 
  Baloons[i].BaloonDisappear(skud);
 }
}


//When shot hits the ball
if(skud1.intersect(Ball)){
  r = random(1,255);
  b = random(1,255);
  g = random(1,255);
  
  println("hit");
}

//When shot hit the ball it resets
if(skud1.intersect(Ball)){
  skud1.reset();
}




//The ball
Ball.displayBall(r,g,b);
Ball.move();
//Guns and skud
Guns0.displayguns(350,200);
Guns1.displayguns(350,-150);
skud.displaySkud(350,200);
skud1.displaySkud(350,-150);
skud1.Fire();
skud.Fire();
}
