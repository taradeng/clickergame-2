void game() {
  background(255);

  //target
  strokeWeight (4);
  stroke(0);



  if (target == 6) {

    fill(255);
    ellipse(x, y, slider-50, slider-50);
    imageMode(CENTER);
    if (player == COOKIE) {
      image(cookie, x, y, 105, 105);
    } else if (player == CIRCLE) {
      noFill();
      ellipse(x, y, 105, 105);
    }
  }

  if (target == 7) {


    imageMode(CENTER);
    if (player == COOKIE) {
      ellipse(x, y, 100, 100);
      image(cookie, x, y, slider-50, slider-50);
    } else if (player == CIRCLE) {
      fill(255);
      ellipse(x, y, 105, 105);
      ellipse(x, y, slider-50, slider-50);
    }
  }

  if (target == 8) {
    player = CIRCLE;
    fill(255);
    ellipse(x, y, slider-50, slider-50);
  }

  //movement
  x = x + vx;
  y = y + vy;

  //bounce top or bottom 
  if (y < 55 || y > 735) vy = vy * -1;
  if (x < 50 || x > 750) vx = vx * -1;
  //50 makes bounce off edge of circle

  fill(0);
  textSize(40);
  text("cookies: " + score, 100, 100);
  text("lives: " + lives, 100, 150);

  //pause button  
  stroke(0);
  strokeWeight(4);
  fill(255);
  ellipse(700, 55, 150, 60);

  fill(0);
  text("pause", 700, 50);

  highscore();
}


void highscore() {
  if (score > highscore) { 
    highscore=score;
  }
}


void gameClicks() {
  //centre of target is x, y. 50 is radius
  if (dist(mouseX, mouseY, x, y) < slider) {
    score = score + 1;

    coin.rewind();
    coin.play();
    //speeds up each time you click: exponential
    vy = vy * 1.1; 
    vx = vx * 1.1;
    //also can use "score++;" (means + 1 bc used a lot)
  } else {
    lives = lives - 1;
    if (lives == 0)
      // if if statement only has one, can delete braces
      mode = GAMEOVER; 
    bump.play();



    if (mouseX > 650 && mouseX < 750  && mouseY > 10 && mouseY < 80) {
      mode=PAUSE;
    }
  }
}
