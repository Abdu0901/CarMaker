//Abdullah, Julius and Sebastian 3D2. Programming CarMaker Project.

//3 different integers for each of the carColor's RGB values
int cCRed = 0, cCGreen = 0, cCBlue = 0;

//Used for the void Keypressed function
int numR = 0, numG = 0, numB = 0;
String stringR = "", stringG = "", stringB = "";
int maxTextLength = 3;

boolean isRBoxInFocus = false, isGBoxInFocus = false, isBBoxInFocus = false;

void setup() {
  //Size of the screen
  size(1000, 500);
  //The Screens background color
  background(50);
  constrain(numR, 0, 255);
}

void draw() {
  boxesRGB();
}
//rect(xP, yP, lP, hP);
//Function to detect mousepressed in a box
void mousePressed() {
  if (mouseX >= xP && mouseX <= xP+lP && mouseY >= yP && mouseY <= yP+hP) {
    println("Red Box Clicked");
    isRBoxInFocus = true; 
    isGBoxInFocus = false; 
    isBBoxInFocus = false;
  } else if (mouseX >= xP && mouseX <= xP+lP && mouseY >= yP1 && mouseY <= yP1+hP) {
    println("Green Box Clicked");
    isRBoxInFocus = false; 
    isGBoxInFocus = true; 
    isBBoxInFocus = false;
  } else if (mouseX >= xP && mouseX <= xP+lP && mouseY >= yP2 && mouseY <= yP2+hP) {
    println("Blue Box Clicked");
    isRBoxInFocus = false; 
    isGBoxInFocus = false; 
    isBBoxInFocus = true;
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
    }
    if (key == BACKSPACE) {
      stringB = "";
    }
  }
}

/*
//Function to detect keypressed on numbers and input them. Currently unfinished 
 void keyPressed() {
 if ( key >= '0' && key <= '9' && maxTextLength > stringR.length()) {
 stringR += key;
 }
 if ( key == ENTER || key == RETURN ) {
 numR = int( stringR );
 stringR = "";
 println( numR );
 }
 }
 */

//Copy of keypressed
/*
//Function to detect keypressed on numbers and input them. Currently unfinished 
 void keyPressed() {
 if ( key >= '0' && key <= '9' ) {
 str_num += key;
 }
 if ( key == ENTER || key == RETURN ) {
 num = int( str_num );
 str_num = "";
 println( num );
 }
 }
 */
