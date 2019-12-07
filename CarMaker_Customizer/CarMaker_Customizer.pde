//Abdullah, Julius and Sebastian 3D2. Programming CarMaker Project.

//Icons for the car types
PImage BilIcon, LastBilIcon;
PImage CarTire1, CarTire2, LastBilTire1, LastBilTire2;

//3 different integers for each of the carColor's RGB values
int cCRed = 255, cCGreen = 255, cCBlue = 255;

//Used for the void Keypressed function
int numR = 200, numG = 200, numB = 200;
String stringR = "200", stringG = "200", stringB = "200";
int maxTextLength = 3;

//Shows which box is in focus
boolean isRBoxInFocus = false, isGBoxInFocus = false, isBBoxInFocus = false;

//Highlights box when focused
int boxHighlightR = 255, boxHighlightG = 255, boxHighlightB = 255;
int boxHighlightC1 = 255, boxHighlightC2 = 255, boxHighlightT1 = 255, boxHighlightT2 = 255;
int notInFocusColor = 255, inFocusColor = 150;

void setup() {
  //Loads all images to be used in the program
  BilIcon = loadImage("BilType.png");
  LastBilIcon = loadImage("LastBilType.png");
  CarTire1 = loadImage("CarTire1.png");
  CarTire2 = loadImage("CarTire2.png");
  LastBilTire1 = loadImage("LastBilTire1.png");
  LastBilTire2 = loadImage("LastBilTire2.png");
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
  //Runs all the functions
  boxesRGB();
  TireAndTypes();
  DrawCar();
}

//Function to detect mousepressed in a box
void mousePressed() {
  //Checks if Red box is clicked and sets it in focus
  if (mouseX >= xP && mouseX <= xP+lP && mouseY >= yP && mouseY <= yP+hP) {
    println("Red Box Clicked");
    isRBoxInFocus = true; 
    isGBoxInFocus = false; 
    isBBoxInFocus = false;
    boxHighlightR = inFocusColor; 
    boxHighlightG = notInFocusColor; 
    boxHighlightB = notInFocusColor;
    stringR = ""; //when box is clicked new colour value can be typed
  } //Checks if Green box is clicked and sets it in focus
  else if (mouseX >= xP && mouseX <= xP+lP && mouseY >= yP1 && mouseY <= yP1+hP) {
    println("Green Box Clicked");
    isRBoxInFocus = false; 
    isGBoxInFocus = true; 
    isBBoxInFocus = false;
    boxHighlightR = notInFocusColor; 
    boxHighlightG = inFocusColor; 
    boxHighlightB = notInFocusColor;
    stringG = "";
  } //Checks if Green box is clicked and sets it in focus
  else if (mouseX >= xP && mouseX <= xP+lP && mouseY >= yP2 && mouseY <= yP2+hP) {
    println("Blue Box Clicked");
    isRBoxInFocus = false; 
    isGBoxInFocus = false; 
    isBBoxInFocus = true;
    boxHighlightR = notInFocusColor; 
    boxHighlightG = notInFocusColor; 
    boxHighlightB = inFocusColor;
    stringB = "";
  }
}

//Function to input numbers into boxes
void keyPressed() {
  //Makes the Box in Focus take input from 0-9 only
  if (isRBoxInFocus) {
    if ( key >= '0' && key <= '9' && maxTextLength > stringR.length()) {
      stringR += key;
    }
    if ( key == ENTER || key == RETURN ) {
      numR = constrain(int( stringR ), 0, 255);
      println( numR );
      deselectHighlights();
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
  }
}

//Deselects the highlights and inboxfocus when an input has been added
void deselectHighlights() {
  isRBoxInFocus = false;
  boxHighlightR = notInFocusColor;
  isRBoxInFocus = false;
  boxHighlightG = notInFocusColor;
  isRBoxInFocus = false;
  boxHighlightB = notInFocusColor;
}
