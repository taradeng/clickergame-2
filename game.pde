void game() {
  background(255);
  
  //target
  strokeWeight (4);
  fill(245, 0, 0, 23);
  
  image(cookie, x-50, y-50, 100, 100);
  ellipse(x, y, slider-50, slider-50);
  
  //movement
  x = x + vx;
  y = y + vy;
  
  //bounce top or bottom 
  if (y < 50 || y > 750) vy = vy * -1;
  if (x < 50 || x > 750) vx = vx * -1;
  //50 makes bounce off edge of circle
  
  fill(0);
  textSize(40);
  text("cookies: " + score, 100, 100);
  text("lives: " + lives, 100, 150);
  text("pause", 700, 50);
 
}

void gameClicks(){
  //centre of target is x, y. 50 is radius
  if (dist(mouseX, mouseY, x, y) < 50) {
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
     
   if (mouseX > 650 && mouseX < 750  && mouseY > 10 && mouseY < 80)
   mode=PAUSE;
   
    text("play", 700, 50);
   
  
  }

}
