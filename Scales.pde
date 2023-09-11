void setup() {
  size(500, 500);
  background(0);
}

void scaleRed(int curveX, int curveY) {
  float gradient = 0;
  float r = 0;
  float gradientMove = 0;
  noFill();
  while (gradient < 26) {
    stroke(r, 0, 0);
    beginShape();
    //left
    curveVertex(50+curveX, 0+curveY+gradientMove);
    curveVertex(50+curveX, 0+curveY+gradientMove);
    curveVertex(25+curveX+gradientMove, 25+curveY);
    curveVertex(0+curveX+gradientMove*2, 50+curveY);
    curveVertex(25+curveX+gradientMove, 75+curveY-gradientMove);
    curveVertex(35+curveX+gradientMove, 65+curveY-gradientMove);
    curveVertex(40+curveX+gradientMove/2.5, 80+curveY);
    //middle
    curveVertex(50+curveX, 100+curveY);
    //right
    curveVertex(60-gradientMove/2.5+curveX, 80+curveY);
    curveVertex(65-gradientMove+curveX, 65-gradientMove+curveY);
    curveVertex(75-gradientMove+curveX, 75-gradientMove+curveY);
    curveVertex(100-gradientMove*2+curveX, 50+curveY);
    curveVertex(75-gradientMove+curveX, 25+curveY);
    curveVertex(50+curveX, 0+curveY+gradientMove);
    curveVertex(50+curveX, 0+curveY+gradientMove);
    endShape();
    r+=255/30.0;
    gradient++;
    gradientMove++;
  }
}
void scaleBlue(int curveX, int curveY) {
  float gradient = 0;
  float r = 0;
  float gradientMove = 0;
  noFill();
  while (gradient < 26) {
    stroke(0, r/2, r);
    beginShape();
    //left
    curveVertex(50+curveX, 0+curveY+gradientMove);
    curveVertex(50+curveX, 0+curveY+gradientMove);
    curveVertex(25+curveX+gradientMove, 25+curveY);
    curveVertex(0+curveX+gradientMove*2, 50+curveY);
    curveVertex(25+curveX+gradientMove, 75+curveY-gradientMove);
    curveVertex(35+curveX+gradientMove, 65+curveY-gradientMove);
    curveVertex(40+curveX+gradientMove/2.5, 80+curveY);
    //middle
    curveVertex(50+curveX, 100+curveY);
    //right
    curveVertex(60-gradientMove/2.5+curveX, 80+curveY);
    curveVertex(65-gradientMove+curveX, 65-gradientMove+curveY);
    curveVertex(75-gradientMove+curveX, 75-gradientMove+curveY);
    curveVertex(100-gradientMove*2+curveX, 50+curveY);
    curveVertex(75-gradientMove+curveX, 25+curveY);
    curveVertex(50+curveX, 0+curveY+gradientMove);
    curveVertex(50+curveX, 0+curveY+gradientMove);
    endShape();
    r+=255/30.0;
    gradient++;
    gradientMove++;
  }
}

void draw() {
  rotate(radians(-20));
  //shift 1
  for (int rows = 1400; rows>=-500; rows-=100) {
    for (int columns = 1400; columns>=0; columns-=100) {
      scaleRed(rows, columns);
    }
  }
  //shift 2
  for (int rows = 1550; rows>=-500; rows-=100) {
    for (int columns = 1550; columns>=0; columns-=101.3) {
      scaleBlue(rows, columns);
    }
  }
}
