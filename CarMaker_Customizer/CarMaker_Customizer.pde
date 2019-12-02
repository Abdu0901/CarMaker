//Abdullah, Julius and Sebastian 3D2. Programming CarMaker Project.

//3 different integers for each of the carColor's RGB values
int cCRed = 0, cCGreen = 0, cCBlue = 0;

//Used for the void Keypressed function
int num = 0;
String str_num = "";

int numR = 0;
String inputR = "", inputG = "", inputB = "";
int maxTextLength = 3;

boolean isBoxInFocus = false;

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
  }
}

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
