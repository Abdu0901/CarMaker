//Abdullah, Julius and Sebastian 3D2. Programming CarMaker Project.

//Icons for the car types
PImage BilIcon;
PImage LastBilIcon;

//3 different integers for each of the carColor's RGB values
int cCRed = 255, cCGreen = 255, cCBlue = 255;

//Used for the void Keypressed function
int numR = 255, numG = 255, numB = 255;
String stringR = "255", stringG = "255", stringB = "255";
int maxTextLength = 3;

//Shows which box is in focus
boolean isRBoxInFocus = false, isGBoxInFocus = false, isBBoxInFocus = false;

//Highlights box when focused
int boxHighlightR = 255, boxHighlightG = 255, boxHighlightB = 255;
int boxHighlightC1 = 255, boxHighlightC2 = 255, boxHighlightT1 = 255, boxHighlightT2 = 255;
int notInFocusColor = 255;
int inFocusColor = 150;

void setup() {
  BilIcon = loadImage("BilType.png");
  LastBilIcon = loadImage("LastBilType.png");
  //Size of the screen
  size(1000, 500);
  //The Screens background color
  background(50);
}

void draw() {
  background(50);
  //Car background box
  fill(255);
  rect(350, 170, 600, 300);
  boxesRGB();
  TireAndTypes();
  DrawCar();
}

//Function to detect mousepressed in a box
void mousePressed() {
  if (mouseX >= xP && mouseX <= xP+lP && mouseY >= yP && mouseY <= yP+hP) {
    println("Red Box Clicked");
    isRBoxInFocus = true; 
    boxHighlightR = inFocusColor;
    isGBoxInFocus = false;
    boxHighlightG = notInFocusColor;
    isBBoxInFocus = false;
    boxHighlightB = notInFocusColor;
  } else if (mouseX >= xP && mouseX <= xP+lP && mouseY >= yP1 && mouseY <= yP1+hP) {
    println("Green Box Clicked");
    isRBoxInFocus = false;
    boxHighlightR = notInFocusColor;
    isGBoxInFocus = true;
    boxHighlightG = inFocusColor;
    isBBoxInFocus = false;
    boxHighlightB = notInFocusColor;
  } else if (mouseX >= xP && mouseX <= xP+lP && mouseY >= yP2 && mouseY <= yP2+hP) {
    println("Blue Box Clicked");
    isRBoxInFocus = false; 
    boxHighlightR = notInFocusColor;
    isGBoxInFocus = false;
    boxHighlightG = notInFocusColor;
    isBBoxInFocus = true;
    boxHighlightB = inFocusColor;
  }
}

//Function to input numbers into boxes
void keyPressed() {
  if (isRBoxInFocus) {
    if ( key >= '0' && key <= '9' && maxTextLength > stringR.length()) {
      stringR += key;
    }
    if ( key == ENTER || key == RETURN ) {
      numR = constrain(int( stringR ), 0, 255);
      println( numR );
      deselectHighlights();
    }
    if (key == BACKSPACE) {
      stringR = "";
    }
  }
  if (isGBoxInFocus) {
    if ( key >= '0' && key <= '9' && maxTextLength > stringG.length()) {
      stringG += key;
    }
    if ( key == ENTER || key == RETURN ) {
      numG = constrain(int( stringG ), 0, 255);
      println( numG );
      deselectHighlights();
    }
    if (key == BACKSPACE) {
      stringG = "";
    }
  }
  if (isBBoxInFocus) {
    if ( key >= '0' && key <= '9' && maxTextLength > stringB.length()) {
      stringB += key;
    }
    if ( key == ENTER || key == RETURN ) {
      numB = constrain(int( stringB ), 0, 255);
      println( numB );
      deselectHighlights();
    }
    if (key == BACKSPACE) {
      stringB = "";
    }
  }
}

void deselectHighlights() {
  isRBoxInFocus = false;
  boxHighlightR = notInFocusColor;
  isRBoxInFocus = false;
  boxHighlightG = notInFocusColor;
  isRBoxInFocus = false;
  boxHighlightB = notInFocusColor;
}
