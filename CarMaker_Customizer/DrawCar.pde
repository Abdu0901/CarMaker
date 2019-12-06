int tType = 0, cType=1;
int tSize = 50;

car1 CdT1 = new car1(cCRed, cCGreen, cCBlue, cType, tType, tSize);

class car1 {
  int cCR, cCG, cCB, cType; //carColourRed, carColourGreen, carColourBlue, carType
  tire cTire; //erklær objekt type (fra class tire)

  car1(int cR, int cG, int cB, int cT, int tT, int sT) { //colourRed, colourGreen, colourBlue, tireTypeSize
    cCR = cR;
    cCG = cG;
    cCB = cB;

    cType = cT;
    cTire = new tire(sT, tT);
  }
}

class tire {
  int sizeT;
  int tType;

  tire(int sT, int tT) {
    sizeT = sT;
    tType = tT;
  }
}

//DRAW FUNKTION

void DrawCar() {
  translate(400, 120);
  if (cType == 0) {

    //lastbil
    fill(cCRed, cCGreen, cCBlue);
    rect(50, 100, 150, 100);
    rect(50, 200, 380, 50);

    if (tType == 0) {
      //Hjultype1.1
      fill(0);
      ellipse(100, 250, CdT1.cTire.sizeT, CdT1.cTire.sizeT);
      ellipse(200, 250, CdT1.cTire.sizeT, CdT1.cTire.sizeT);
      ellipse(350, 250, CdT1.cTire.sizeT, CdT1.cTire.sizeT);

      fill(255);
      ellipse(100, 250, CdT1.cTire.sizeT-10, CdT1.cTire.sizeT-10);
      ellipse(200, 250, CdT1.cTire.sizeT-10, CdT1.cTire.sizeT-10);
      ellipse(350, 250, CdT1.cTire.sizeT-10, CdT1.cTire.sizeT-10);
    } else {
      fill(0);
      ellipse(100, 250, CdT1.cTire.sizeT, CdT1.cTire.sizeT);
      ellipse(200, 250, CdT1.cTire.sizeT, CdT1.cTire.sizeT);
      ellipse(350, 250, CdT1.cTire.sizeT, CdT1.cTire.sizeT);

      fill(255);
      ellipse(100, 250, CdT1.cTire.sizeT/2, CdT1.cTire.sizeT/2);
      ellipse(200, 250, CdT1.cTire.sizeT/2, CdT1.cTire.sizeT/2);
      ellipse(350, 250, CdT1.cTire.sizeT/2, CdT1.cTire.sizeT/2);
    }
  } else {

    //bilbil
    fill(cCRed, cCGreen, cCBlue);
    rect(175, 200, 250, 50);
    rect(250, 150, 100, 50);

    if (tType == 0) {
      fill(0);
      ellipse(230, 250, CdT1.cTire.sizeT, CdT1.cTire.sizeT);
      ellipse(370, 250, CdT1.cTire.sizeT, CdT1.cTire.sizeT);
      fill(255);
      ellipse(230, 250, CdT1.cTire.sizeT*0.1, CdT1.cTire.sizeT*0.1);
      ellipse(370, 250, CdT1.cTire.sizeT*0.1, CdT1.cTire.sizeT*0.1);
    } else {
      fill(155);
      ellipse(230, 250, CdT1.cTire.sizeT, CdT1.cTire.sizeT);
      ellipse(370, 250, CdT1.cTire.sizeT, CdT1.cTire.sizeT);
      noFill();
    }
  }
  translate(-400, -120);
}
