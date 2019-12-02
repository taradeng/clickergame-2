void intro() {
  //background(232,172,12); dark yellow
  background(255);
  
  //button
  strokeWeight(4);
  stroke(10);
  fill(15,64,2);
  ellipse(400, 400, 300, 100);
  image(milk, 300, 500, 150, 200);
  
  fill(#C9E399); //change textcolour
  textSize(32); //up to 72
  text("Start Game", 400, 395 ); //text has to be in double quotes
  textSize(45);
  text("Milk and Cookies", 400, 300);
  fill(0);
  textSize(32);
  text("options", 600, 600);
  
  //theme sound 
  theme.play();
  
  
}

void introClicks() {
  if (mouseX > 250  && mouseX < 550  && mouseY > 350 && mouseY < 450)
  mode = GAME;
  theme.pause();
  //rewind allows music to be played from the start 
  theme.rewind();
  
  if (mouseX > 550  && mouseX < 650  && mouseY > 550 && mouseY < 650)
  mode = options;
}
