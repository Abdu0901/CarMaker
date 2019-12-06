int xTT = 60;
int yTT = 300;
int lTT = 100;
int hTT = 50;


void TireAndTypes() {
  //CarType Box 1
  fill(255);
  rect(xTT, yTT, lTT, hTT);
  BilIcon.resize(lTT, hTT);
  image (BilIcon, xTT, yTT);

  //CarType Box 2
  fill(255);
  rect(xTT+150, yTT, lTT, hTT);
  LastBilIcon.resize(lTT, hTT);
  image (LastBilIcon, xTT+150, yTT);
}
