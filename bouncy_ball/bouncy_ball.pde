int x = 50 ;
int y = 50;
int dx = 2;
int mx = 2;
int a = 255;
int b = 192;
int c =203;
void setup() {
  size (600,600);
}

void draw() {
  background(a,b,c);
  circle (x,y,100);
  x = x + dx;
  y = y + mx;
  if (x >= width - 50){
    dx = - dx;
   a = 20;
  }
  if (x <= 50) {
    c = 10;
    dx = 3;
  }
  if (y <= 50) {
    mx = 5;
    a = 130;
  }
  if (y == 550) {
    mx = -5;
    a=20;
    b=40;
    c=560;
}
println(y);
}
