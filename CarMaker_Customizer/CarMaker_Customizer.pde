//Abdullah, Julius and Sebastian 3D2. Programming CarMaker Project.

//3 different integers for each of the carColor's RGB values
int cCRed = 0, cCGreen = 0, cCBlue = 0;

//Used for the void Keypressed function
int numR = 0, numG = 0, numB = 0;
String stringR = "", stringG = "", stringB = "";
int maxTextLength = 3;

boolean isRBoxInFocus = false, isGBoxInFocus = false, isBBoxInFocus = false;

int boxHighlightR = 255, boxHighlightG = 255, boxHighlightB = 255;

void setup() {
  //Size of the screen
  size(1000, 500);
  //The Screens background color
  background(50);
}

void draw() {
  boxesRGB();
  //Car background box
  fill(255);
  rect(350, 170, 600, 300);
}

//Function to detect mousepressed in a box
void mousePressed() {
  if (mouseX >= xP && mouseX <= xP+lP && mouseY >= yP && mouseY <= yP+hP) {
    println("Red Box Clicked");
    isRBoxInFocus = true; 
    boxHighlightR = 150;
    isGBoxInFocus = false;
    boxHighlightG = 255;
    isBBoxInFocus = false;
    boxHighlightB = 255;
  } else if (mouseX >= xP && mouseX <= xP+lP && mouseY >= yP1 && mouseY <= yP1+hP) {
    println("Green Box Clicked");
    isRBoxInFocus = false;
    boxHighlightR = 255;
    isGBoxInFocus = true;
    boxHighlightG = 150;
    isBBoxInFocus = false;
    boxHighlightB = 255;
  } else if (mouseX >= xP && mouseX <= xP+lP && mouseY >= yP2 && mouseY <= yP2+hP) {
    println("Blue Box Clicked");
    isRBoxInFocus = false; 
    boxHighlightR = 255;
    isGBoxInFocus = false;
    boxHighlightG = 255;
    isBBoxInFocus = true;
    boxHighlightB = 150;
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
  boxHighlightR = 255;
  isRBoxInFocus = false;
  boxHighlightG = 255;
  isRBoxInFocus = false;
  boxHighlightB = 255;
}
