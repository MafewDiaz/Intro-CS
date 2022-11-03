float f = 0;
float p = 0;
float y = 400;
float h = 100;
void setup () { // called once
  size (700,700) ; 
}

void draw () { // in a loop
  background (100);
  fill(255,0,0,f);
  circle (width / 2,height / 2,300);
  f = f+1 ;
  fill (255, 255, 255);
  square (450, p, 50) ; 
  p=p+3 ;
  if (p >= 700) {
      p = 0;
  }
  square (0 , 0, y) ; 
  y=y-7 ; 
  triangle (0,0,0,50,h,25);
  h = h+8 ;
 
}
