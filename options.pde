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
 ellipse(400, 400, slider-50, slider-50);
 
 }
void optionsClicks(){

}
