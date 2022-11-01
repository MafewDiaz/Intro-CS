float f = 0;

void setup () {
  size (1000,1000);
}

void draw () { //loop
  background (100) ;
  square (f , 0, 250) ; 
  f=f+3 ; 
  square (0 , f, 250) ; 
  f=f+1 ; 
}
void mousePressed(){
  f = 1;
  
}
