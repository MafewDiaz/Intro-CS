int y = 450 ;
int x = 450 ;
int z = 550 ;
int a = 440 ;
int b = 290 ;
int q = 559 ;
int xspeed = 5;
int circleX = 440;

void setup () {
  size (1000,1000) ;
}
void draw () {
  background (192,200,192);
  fill (125,125,125);
  ellipse (500, 500, 150, 250);
  fill(300,300,300);
  triangle(500, y, x, 500, z, 500);
  y = y - 1 ;
  if (y <= 430) {
      y = y+20;
}
  if (y >= 460) {
    y = y+1;
  }
  x = x- 1 ;
  if (x <= 440) {
    x = x +20;
  }
  z = z + 1 ;
  if (z == 560) {
    z = z-20;
  }
  fill (100,100,100);
  ellipse (500, 300, 200, 200);
  fill (255, 255, 255);
  rect (425,275,150,30,10);
  fill (0);
  circle(circleX, 290, 20);
  circleX = circleX +xspeed;
  if (circleX > 560) {
    xspeed = -5;
  }
  if (circleX<440) {
    xspeed = 5;
  }
  triangle(480,600,350,800,450,580);
  triangle(560,580,650,800,525,600);
  fill (125,125,125);
  rect (50,395,400,50);
  rect (550,395,400,50);
}
