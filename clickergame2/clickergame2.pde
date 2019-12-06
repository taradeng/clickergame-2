import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;  

Minim minim; //toolbox of functions used to load files 
AudioPlayer bump, coin, theme, gameover; //individual sound files 
//mode
//mode variables
int mode; //name your modes--easier. modes to divide up void draw. final locks int

final int INTRO = 0;

final int GAME = 1;

final int PAUSE = 2; 

final int GAMEOVER = 3;

final int options = 4;

int target = 7;

int highscore = 5;

int slider = 150; 

PImage cookie;

PImage milk;

PImage milk2;


//target

float x, y, vx, vy;

int score, lives;



void setup() {
  
  cookie = loadImage ("cookie.jpg");
  milk = loadImage ("milk and cookies.jpg");
  milk2 = loadImage ("milk2.jpg");

  x = 400;

  y = 400;

  //vx/vy changes movement of target

  vx = random(-3,3);

  vy = random(-3,3);

  

  score = 0;

  lives = 3;

  

  size(800, 800);

  mode = INTRO ;

  textAlign(CENTER, CENTER); //central text

  rectMode(CENTER);

  //loading sound files. activates library: new/this not from comp 11
  minim = new Minim(this);
  coin = minim.loadFile("coinsound.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameoversound.wav");
  theme = minim.loadFile("mario bros theme.mp3");
  //theme is mp3!
}



void draw() {
 

  if (mode == INTRO) {

    intro();

    

  } else if (mode == GAME) {

    game();

    

  } else if (mode == PAUSE) {

    pause();

  } else if (mode == GAMEOVER) {

    gameover();
    
      } else if (mode == options) {

    options();

  } else {

  println("Error: Mode = " + mode);

  }

}
