void options() {
  background(0);
  textSize(34);
  fill(255);
  text("size", 200, 300);
  text("skin", 480, 300);

  //slider 
  stroke(255);
  strokeWeight(4);
  line(150, 400, 250, 400);
  
//if (dist(slider, 400, mouseX, mouseY) < 20) {
 //   fill(255);
 // } else {
    fill(0);
  ellipse(slider, 400, 30, 30);
 
 if (mousePressed) {
   if (dist(slider, 400, mouseX, mouseY) < 20) {
     slider = mouseX;
     
     if (slider < 150) slider = 150;
     if (slider > 250) slider = 250;
   }
 }
 
 //blank player skin
 fill(255);
 ellipse(460, 400, slider-50, slider-50);
 
 // reg player skin
 fill(255);
 ellipse(460, 620, slider-50, slider-50);
 imageMode(CENTER);
 image(cookie, 460, 620, slider-100, slider-100);
 
 
 
//back
  textSize(34);
  fill(255);
  text("BACK", 650, 700);

 }
void optionsClicks(){
  
    
  if (dist(mouseX, mouseY, 650, 700) < 90) {
    mode=GAME;
 }
 if (dist(mouseX, mouseY, 460, 400) < 100) {
   mode=GAME; 
   target = target-1;
 }
 if (dist(mouseX, mouseY, 460, 620) < 100) {
   mode=GAME;
   target = target+1;
 }
 
   

}
