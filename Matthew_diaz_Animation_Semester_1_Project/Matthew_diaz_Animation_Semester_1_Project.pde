//This code uses variables and booleans
//and text in order to model sunrise
//and sunset. An inspiration was the qoute
//by Bernard Williams: "There was never a 
//night or a problem that could defeat sunrise 
//or hope.” I hope you find peace in my art.





int x = 0, dx = 0;
int y = 350, dy = 0;
int z = 120, dz = 0;
int w = 120, dw = 0;
float radius = random(100,300);
boolean yes = false;
boolean isNight = false;

void setup() {
  size (500, 500);
}

void draw() {
  if (isNight) {
    background(0);
  } else {
    background(z, 120, 120);
    fill(246, 255, 0);
    circle(250, y,radius);
    fill (0,38,w);
    rect (0,350,500,150);
  }
  w+=dw;
  y+=dy;
  x+=dx;
  z+=dz;
  textSize(20);
  text("W for Sunrise, S for Sunset, N for Night", 20, 20);
}

void keyPressed() {
    if(key == 'w') {
      dy = -3;
      dz=3;
      dw = 3;
      isNight = false;
    }
    if(key == 's') {
      dy = 5;
      dz=-5;
      dw=-5;
      isNight = false;
    }
    if(key == 'n') {
      isNight = !isNight;
    }
    if(yes) {
      w-=dw;
      y-=dy;
      x-=dx;
      z-=dz;
    }
}
