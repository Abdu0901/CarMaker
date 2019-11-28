//Abdullah, Julius and Sebastian 3D2. Programming CarMaker Project.

//3 different integers for each of the carColor's RGB values
int cCRed = 0;
int cCGreen = 0;
int cCBlue = 0;

//Used for the void Keypressed function
int num = 0;
String str_num = "";

void setup() {
  //Size of the screen
  size(1000, 500);
  //The Screens background color
  background(50);
}

void draw() {
  boxesRGB();
}

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
