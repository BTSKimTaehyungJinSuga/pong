import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Pong!
//colors
color lightpurple = #BF9A82;
color brown = #45201E;
color pink = #FF0F53;
color green = #558A67;
color red = #880808;

//mode framework
int mode;
final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
float vx, vy; 
boolean AI;

//scoring
int leftscore, rightscore, timer;

//keyboard vairables
boolean wkey, skey, upkey, downkey;

//sound variables
Minim minim;
AudioPlayer theme, coin, bump, gameover;

void setup(){
  size(800, 600);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);

  //initialize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  vx = random(-3, 3);
  vy = random(-3, 3);
  
  //initialize score
  rightscore = leftscore = 0;
  timer = 100;
  
  //initialize keyboard vars
  wkey = skey = upkey = downkey = false;
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
}

void draw(){
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}
