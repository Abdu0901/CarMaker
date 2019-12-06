int xTT = 20;
int yTT = 300;
int lTT = 100;
int hTT = 50;


void TireAndTypes() {
  //CarType Box 1
  fill(boxHighlightC1);
  rect(xTT, yTT, lTT, hTT);
  BilIcon.resize(lTT, hTT);
  image (BilIcon, xTT, yTT);
  if (mouseX >= xTT && mouseX <= xTT+lTT && mouseY >= yTT && mouseY <= yTT+hTT) {
    if (mousePressed) {
      cType = 1;
      boxHighlightC1 = inFocusColor;
      boxHighlightC2 = notInFocusColor;
      println("Type LastBil Button Clicked");
    }
  }

  //CarType Box 2
  fill(boxHighlightC2);
  rect(xTT+150, yTT, lTT, hTT);
  LastBilIcon.resize(lTT, hTT);
  image (LastBilIcon, xTT+150, yTT);
  if (mouseX >= xTT+150 && mouseX <= xTT+150+lTT && mouseY >= yTT && mouseY <= yTT+hTT) {
    if (mousePressed) {
      cType = 0;
      boxHighlightC2 = inFocusColor;
      boxHighlightC1 = notInFocusColor;
      println("Type Car Button Clicked");
    }
  }

  //Car Type Text
  fill(255);
  textSize(30); 
  text("Select Car Type", xTT, yTT-10);

  //Car TireType Box 1
  fill(boxHighlightT1);
  rect(xTT, yTT+120, lTT, hTT);
  if (mouseX >= xTT && mouseX <= xTT+lTT && mouseY >= yTT+120 && mouseY <= yTT+120+hTT) {
    if (mousePressed) {
      tType = 0;
      boxHighlightT1 = inFocusColor;
      boxHighlightT2 = notInFocusColor;
      println("Tire 1 Button Clicked");
    }
  }

  //Car TireType Box 2
  fill(boxHighlightT2);
  rect(xTT+150, yTT+120, lTT, hTT);
  if (mouseX >= xTT+150 && mouseX <= xTT+150+lTT && mouseY >= yTT+120 && mouseY <= yTT+120+hTT) {
    if (mousePressed) {
      tType = 1;
      boxHighlightT2 = inFocusColor;
      boxHighlightT1 = notInFocusColor;
      println("Tire 1 Button Clicked");
    }
  }

  //Car Tire Text
  fill(255);
  textSize(30); 
  text("Select Car Tire", xTT, yTT+110);
}
