String userChoice = "Not chosen";
int randomInt;
int userScore = 0;
int computerScore = 0;
int ties = 0;


void setup() {
  size(800, 800);
  textSize(30);
}

void draw() {
  background(200);
  if (userChoice == "Rock") {
    fill(0, 100, 100);
  } else {
    fill(255);
  }
  rect(width / 3 - 100, 100, 100, 50);
  if (userChoice == "Paper") {
    fill(0, 200, 200);
  } else {
    fill(255);
  }
  rect(width / 3 + 50, 100, 100, 50);
  fill(255);
  if (userChoice == "Scissors") {
    fill(255, 150, 125);
  }
  rect(width / 3 + 200, 100, 100, 50);
  fill(0);
  text("Rock", width / 3 - 100, 140);
  text("Paper", width / 3 + 50, 140);
  text("Scissors", width / 3 + 200, 140);

  // computer
  text("Computer:", width / 2 - 100, 300);
  if (randomInt ==0) {
    text("Rock", width / 2 -100, 400);
  } else if (randomInt == 1) {
    text("Paper", width / 2 -100, 400);
  } else if (randomInt == 2) {
    text("Scissors", width / 2 -100, 400);
  }

  text("Computer Score:" + computerScore, 500, 500 );
  text("User Score:" + userScore, 500, 550);
  text("Ties:" + ties, 500, 600);
}

void mousePressed() {
  if (mouseX > width /3 - 100 &&
    mouseX < width / 3 &&
    mouseY > 100 && mouseY < 150) {
    userChoice = "Rock";
    randomInt = (int) random(3);
  } else if (
    mouseX > width / 3 + 50 &&
    mouseX < width / 3 + 150 &&
    mouseY > 100 && mouseY < 150
    ) {
    userChoice = "Paper";
    randomInt = (int) random(3);
  } else if (
    mouseX > width / 3 + 200 &&
    mouseX < width / 3 + 300 &&
    mouseY >  100 && mouseY < 150
    ) {
    userChoice = "Scissors";
    randomInt = (int) random(3);
  } else {
    userChoice = "Not Chosen";
  }
  println(userChoice);

  if ((userChoice == "Rock" && randomInt == 2) || (userChoice == "Paper" && randomInt == 0) || (userChoice == "Scissors" && randomInt == 1)) {
    userScore = userScore + 1;
  } else if ((userChoice == "Rock" && randomInt == 1) || (userChoice == "Paper" && randomInt == 2) || (userChoice == "Scissors" && randomInt == 0)) {
    computerScore = computerScore + 1;
  } else {
    ties = ties + 1;
  }
}
