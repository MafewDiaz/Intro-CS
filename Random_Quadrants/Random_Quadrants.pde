float x;
float y;
int red;
int green;
int blue;

void setup() {
  size(600, 600);
}

void draw() {
  x = random(300);
  y = random(300);
  fill(250,0,0);
  circle(x, y, 30); 
  
  
  x = random(300);
  y = random (300);
  fill (0,250,0);
  translate(300, 0);
  circle(x , y , 30);
  
  x = random(300);
  y = random (600);
  fill (0,0,250);
  translate(0,300);
  circle(x , y , 30);
   x = random(300);
  y = random (600);
  fill (250,250,0);
  translate(-300,0);
  circle(x , y , 30);
  
}
