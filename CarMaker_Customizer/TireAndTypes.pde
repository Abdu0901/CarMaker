int xTT = 20, yTT = 300, lTT = 100, hTT = 50;

void TireAndTypes() {
  //CarType Box 1
  fill(boxHighlightC1);
  rect(xTT, yTT, lTT, hTT);
  BilIcon.resize(lTT, hTT);
  image (BilIcon, xTT, yTT);
 
  if (mouseX >= xTT && mouseX <= xTT+lTT && mouseY >= yTT && mouseY <= yTT+hTT && mousePressed) {
      cType = 1;
      boxHighlightC1 = inFocusColor;
      boxHighlightC2 = notInFocusColor;
      println("Type LastBil Button Clicked");
  }

  //CarType Box 2
  fill(boxHighlightC2);
  rect(xTT+150, yTT, lTT, hTT);
  LastBilIcon.resize(lTT, hTT);
  image (LastBilIcon, xTT+150, yTT);
  
  if (mouseX >= xTT+150 && mouseX <= xTT+150+lTT && mouseY >= yTT && mouseY <= yTT+hTT && mousePressed) {
      cType = 0;
      boxHighlightC2 = inFocusColor;
      boxHighlightC1 = notInFocusColor;
      println("Type Car Button Clicked");
    }

  //Car Type Text
  fill(255);
  textSize(30); 
  text("Select Car Type", xTT, yTT-10);

  //Car TireType Box 1
  fill(boxHighlightT1);
  rect(xTT, yTT+120, lTT, hTT);
  //Checks for which CarType is active and displays corresponding tires
  
  if (cType == 1) {  
    CarTire1.resize(lTT, hTT);
    image (CarTire1, xTT, yTT+120);
  } else {
    LastBilTire1.resize(lTT, hTT);
    image (LastBilTire1, xTT, yTT+120);
  }
  
  if (mouseX >= xTT && mouseX <= xTT+lTT && mouseY >= yTT+120 && mouseY <= yTT+120+hTT && mousePressed) {
      tType = 0;
      boxHighlightT1 = inFocusColor;
      boxHighlightT2 = notInFocusColor;
      println("Tire 1 Button Clicked");
    }
  

  //Car TireType Box 2
  fill(boxHighlightT2);
  rect(xTT+150, yTT+120, lTT, hTT);
  
  //Checks for which CarType is active and displays corresponding tires
  if (cType == 1) {  
    CarTire2.resize(lTT, hTT);
    image (CarTire2, xTT+150, yTT+120);
  } else {
    LastBilTire2.resize(lTT, hTT);
    image (LastBilTire2, xTT+150, yTT+120);
  }
  
  if (mouseX >= xTT+150 && mouseX <= xTT+150+lTT && mouseY >= yTT+120 && mouseY <= yTT+120+hTT && mousePressed) {
      tType = 1;
      boxHighlightT2 = inFocusColor;
      boxHighlightT1 = notInFocusColor;
      println("Tire 1 Button Clicked");
  }

  //Car Tire Text
  fill(255);
  textSize(30); 
  text("Select Car Tire", xTT, yTT+110);
}
