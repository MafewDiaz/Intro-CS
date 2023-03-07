void setup() {
  size(1300, 600
  );
  background( 75, 61, 96);
  drawBuildings();
}

void drawBuildings() {
  int buildingX = 0; 
  for (int i = 0; i < 30; i++) {
    int buildingWidth = 40;
    int buildingHeight = 100 + i * 10;
    int numWindows = i + 1;
    
    // building
    fill(100);
    stroke(0);
    rect(buildingX, height - buildingHeight, buildingWidth, buildingHeight);
    
    // windows
    fill(255);
    stroke(0);
    for (int j = 0; j < numWindows; j++) {
      rect(buildingX + 5, height - buildingHeight + 5 + j * 20, 10, 10);
      rect(buildingX + 25, height - buildingHeight + 5 + j * 20, 10, 10);
    }
    
    
    buildingX += buildingWidth + 3;
  }
}
