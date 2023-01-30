void setup(){
size(500,500);
background(35);
drawTriangle();
drawCircle();
drawRect();
}
void drawCircle(){
 fill (75);
  circle(250,250,100);
  
}

void drawRect(){
   fill(125);
  rect(225, 225, 50, 50);
 
}

void drawTriangle(){
  fill(205);
  triangle(200, 300, 250, 175, 300, 300); 
}
