//Abdullah, Julius and Sebastian 3D2. Programming CarMaker Project.

//3 different integers for each of the carColor's RGB values
int cCRed = 0, cCGreen = 0, cCBlue = 0;

//Used for the void Keypressed function
int numR = 0, numG = 0, numB = 0;
String inputR = "", inputG = "", inputB = "";
int maxTextLength = 3;

boolean isRBoxInFocus = false, isGBoxInFocus = false, isBBoxInFocus = false;

void setup() {
  //Size of the screen
  size(1000, 500);
  //The Screens background color
  background(50);
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

//Function to detect keypressed on numbers and input them. Currently unfinished 
void keyPressed() {
  if (isRBoxInFocus) {
    if ( key >= '0' && key <= '9' && maxTextLength > inputR.length()) {
      inputR += key;
    }
    if ( key == ENTER || key == RETURN ) {
      numR = int( inputR );
      inputR = "";
      println( numR );
    }
  }
  if (isGBoxInFocus) {
    if ( key >= '0' && key <= '9' && maxTextLength > inputG.length()) {
      inputG += key;
    }
    if ( key == ENTER || key == RETURN ) {
      numG = int( inputG );
      inputG = "";
      println( numG );
    }
  }
  if (isBBoxInFocus) {
    if ( key >= '0' && key <= '9' && maxTextLength > inputB.length()) {
      inputB += key;
    }
    if ( key == ENTER || key == RETURN ) {
      numB = int( inputB );
      inputB = "";
      println( numB );
    }
  }
}

/*
//Function to detect keypressed on numbers and input them. Currently unfinished 
 void keyPressed() {
 if ( key >= '0' && key <= '9' && maxTextLength > inputR.length()) {
 inputR += key;
 }
 if ( key == ENTER || key == RETURN ) {
 numR = int( inputR );
 inputR = "";
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
