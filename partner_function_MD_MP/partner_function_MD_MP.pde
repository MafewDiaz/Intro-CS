void setup(){
size(500,500);
background(35);
}



void drawShape() {
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
//PARTNER CODE
//MALINA GITHUB: https://github.com/malinapatel/intro-cs/blob/main/functions_excercise/functions_excercise.pde

void draw () {
  drawShape(); 
translate(-50, 30);
drawShape(); 

  christmastree ();
  
  translate (-300,0);
  christmastree ();

  scale (0.5);
  translate (920,0);
  christmastree (); 
  
}

void christmastree () {
  push ();
beginShape();
vertex (500, 700);
vertex (630, 280);
vertex (760, 700);
endShape ();
pop();

push ();
beginShape();

vertex (520, 550);
vertex (630, 200);
vertex (740, 550);
endShape ();
pop();


push ();
beginShape();
vertex (540, 401);
vertex (630, 200);
vertex (720, 401);
endShape ();
pop();




}
