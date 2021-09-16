int[][] bCoord = {};

void setup() {
  size(400, 400);
  noLoop(); //stops the draw() function from repeating
}
void draw(){
  for (int y1 = 425; y1 > -30; y1 -= 15){
    for (int x1 = 434; x1 > 37; x1 -= 33){
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
  stroke(0);
  strokeWeight(3);
  bezier(x1, y1, x1, y1+53, x1-35, y1+53, x1-35, y1);
    
  // Gradient
  for (int y2 = y1+53; y2 > y1; y2 --){
      strokeWeight(1);
      noFill();
      stroke(y2, 168, (int) (Math.random()*255));
      bezier(x1, y1, x1, y2, x1-35, y2, x1-35, y1);
  }
  
  fill(255);
}
