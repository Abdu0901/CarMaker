//X Position of the input boxes
int xP = 60;
//Y position of the input boxes
int yP = 100;
int yP1 = yP+60;
int yP2 = yP1+60;
//Length of the input boxes
int lP = 100;
//Height of the input boxes
int hP = 50;

void boxesRGB () {
  //Red Input Box and text
  fill(255);
  rect(xP, yP, lP, hP);
  //Big red R text
  fill(255, 0, 0);
  textSize(60); 
  text("R", 10, yP+hP); 

  //Green Input Box
  fill(255);
  rect(xP, yP1, lP, hP);
  //Big green G text
  fill(0, 255, 0);
  textSize(60); 
  text("G", 10, yP1+hP); 

  //Blue Input Box
  fill(255);
  rect(xP, yP2, lP, hP);
  //Big blue B text
  fill(0, 0, 255);
  textSize(60); 
  text("B", 10, yP2+hP); 

  //Quick test to change the Car Color
  cCRed = 204;
  cCGreen = 0;
  cCBlue = 255;

  //Little Square which indicates which color the car has
  fill(cCRed, cCGreen, cCBlue);
  rect(xP+lP+10, yP-50, 50, 50);
  fill(255);
  textSize(30); 
  text("Car Color", 10, yP-10);
}
