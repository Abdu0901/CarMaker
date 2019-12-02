//X Position of the input boxes
int xP = 60;
//Y position of the input boxes
int yP = 130;
int yP1 = yP+60;
int yP2 = yP1+60;
//Length of the input boxes
int lP = 130;
//Height of the input boxes
int hP = 50;

void boxesRGB () {
  //Sets carColor to inputtet numbers
  cCRed = numR;
  cCGreen = numG;
  cCBlue = numB;

  //Red Input Box and text
  fill(255);
  rect(xP, yP, lP, hP);
  //Big red R text
  fill(255, 0, 0);
  textSize(60); 
  text("R", xP-50, yP+hP); 
  fill(0);
  text(stringR, xP, yP+hP-2);
  if (int(stringR) < 0) {
    stringR="0";
  } else if (int(stringR) > 255) {
    stringR="255";
  }


  //Green Input Box
  fill(255);
  rect(xP, yP1, lP, hP);
  //Big green G text
  fill(0, 255, 0);
  textSize(60); 
  text("G", xP-50, yP1+hP); 
  fill(0);
  text(stringG, xP, yP1+hP-2);
  if (int(stringG) < 0) {
    stringG="0";
  } else if (int(stringG) > 255) {
    stringG="255";
  }

  //Blue Input Box
  fill(255);
  rect(xP, yP2, lP, hP);
  //Big blue B text
  fill(0, 0, 255);
  textSize(60); 
  text("B", xP-50, yP2+hP); 
  fill(0);
  text(stringB, xP, yP2+hP-2);

  if (int(stringB) < 0) {
    stringB="0";
  } else if (int(stringB) > 255) {
    stringB="255";
  }

  //Little Square which indicates which color the car has
  fill(cCRed, cCGreen, cCBlue);
  rect(xP+lP+10, yP-50, 50, 50);
  fill(255);
  textSize(30); 
  text("Car Color", xP-50, yP-10);

  //CarMaker Title
  fill(255);
  textSize(80); 
  text("Car Maker 9000", 0, 70);
}
