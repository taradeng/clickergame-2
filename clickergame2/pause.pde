void pause() {
  background(0);
  textSize(44);
  fill(255);
  text("BACK", 400, 400);
  
}

void pauseClicks(){
//  if (mouseX > 650 && mouseX < 750  && mouseY > 10 && mouseY < 80)
 //  mode=GAME;
   
   if (dist(mouseX, mouseY, 400, 400) < 50) {
   mode=GAME;
   lives = lives + 1;
   }
 //****   text("pause", 700, 50);
   
  
}
