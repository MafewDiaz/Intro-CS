Drop[] drops = new Drop[10]; //my array
Puddle puddle;
boolean showRain = false; // for when you click

void setup() {
  size(500, 500);
  puddle = new Puddle();
}

void draw() {
  background(0);
  if (showRain) {
    for (Drop drop : drops) {
      drop.fall();
      drop.show();
      puddle.checkCollision(drop);
    }
  }
  puddle.show();
}

void mouseClicked() {
  if (!showRain) {
    for (int i = 0; i < drops.length; i++) {
      drops[i] = new Drop(mouseX, mouseY);//making new drop at mouse click location
    }
    showRain = true; 
  } else {
   
    for (Drop drop : drops) {
      drop.reset();// click again and the drops stop(also line 33)
    }
    showRain = false; 
  }
}

class Drop {
  float x, y;
  float speed = random(3, 10);

  Drop(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void fall() {
    y += speed;
    if (y > height) {
      reset();
    }
  }

  void show() {
    stroke(250);
    line(x, y, x, y+10);
  }
  
  void reset() {
    y = random(-500, -50);
  }
}

class Puddle {
  float[] y = new float[height];
  float size;
  float growthRate = 0.001;// super slow since there are 10 drops

  void checkCollision(Drop d) {
    if (d.y > height - 20) {
      int index = floor(d.x);
      y[index] = max(y[index], d.y - 5);
      size = lerp(size, max(size, y[index]), growthRate);//checking for distance from what i read
    }
  }

  void show() {
    noStroke();
    fill(0, 100, 200, 150);
    rect(0, height-size, width, size);
  }
}
