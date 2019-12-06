void gameover() {
  background(255);
  fill(#C9E399);
  textSize(55);
  text("GAMEOVER! ", 400, 300);
 
  //restart button
  fill(255);
  stroke(0);
  strokeWeight(3.3);
  rect(400, 420, 230, 50);
  textSize(40);
  
  fill(0);
  text("start over", 400, 416);
  image(milk2, 400, 500, 100, 100);
  
  
}

void gameoverClicks(){
  //**** if (mouseX > 230 && mouseX < 400  && mouseY > 300 && mouseY < 500)
  mode = INTRO;
  theme.rewind();
  
}
