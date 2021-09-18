void setup() {
  size(250, 250);
  //noLoop(); //stops the draw() function from repeating
}
void draw(){
  for (int y1 = 265; y1 > -30; y1 -= 15){
    for (int x1 = 280; x1 > 0; x1 -= 33){
      if (y1 % 2 == 0){      // Even Rows
        scale(x1, y1);
      }
      else {
        scale(x1-16, y1);
      }
    }
  }
}

void scale(int x1, int y1){
  //scale(37, 2, 37, 55, 2, 55, 2, 2);
  
  if ((mouseX > x1 && mouseX < x1 + 25) && (mouseY < y1 && mouseY > y1 - 40)){
    //stroke(0);
    //strokeWeight(1);
    fill((y1+53)- 50, 170, (y1+53) + 50);
    bezier(x1, y1, x1, y1+53, x1-35, y1+53, x1-35, y1);
  } 
  else {
    stroke(0);
    strokeWeight(1);
    bezier(x1, y1, x1, y1+53, x1-35, y1+53, x1-35, y1);
    
    // Fill Gradient
    for (int y2 = y1+53; y2 > y1; y2 --){
        strokeWeight(1);
        noFill();
        stroke(y2 - 50, 139, y2 + 50);
        //y2 - 50, 250, y2 + 50
        bezier(x1, y1, x1, y2, x1-35, y2, x1-35, y1);
    }
    fill(0);
    ellipse(x1, y1, 50, 10);
  }
}
