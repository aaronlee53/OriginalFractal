int stretch = 5; 

void setup() {
  size(900, 900); 
  background(250); 
  noLoop(); 
}

void draw() {
  drawFractal(width / 2, height / 2, 200, 250); 
}

void mouseClicked() {
  background(255); 
  drawFractal(width / 2, height / 2, 200, 250); 
}

void drawFractal(float x, float y, float size, int set) {
  if (size < 15) { 
    return;
  }
  
  pushMatrix(); 
  translate(x, y); 
  rotate(radians(53)); 
  fill(set, 60, 90, stretch); 
  stroke(set, (float)Math.random()*250, (float)Math.random()*250); 
  rectMode(CENTER); 
  rect(0, 0, size, size); 
  popMatrix(); 
  
  drawFractal(x - size * 0.9, y, size * 0.6, set - 10);
  drawFractal(x + size * 0.9, y, size * 0.6, set - 10);
  drawFractal(x, y - size * 0.9, size * 0.6, set - 10);
  drawFractal(x, y + size * 0.9, size * 0.6, set - 10);
}
