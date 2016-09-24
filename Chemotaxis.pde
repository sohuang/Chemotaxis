int numBacteria = 15;
Bacteria[] colony = new Bacteria[numBacteria];
int LAVEN = color(200, 180, 230);
int FLUSH = color(161, 176, 201);
int DRAIN = color(184, 212, 200);
int GREEN = color(201, 217, 139);
int CREAM = color(242, 229, 182);
int[] colorArray = {LAVEN, FLUSH, DRAIN, GREEN, CREAM};
Word[] wordArray = new Word[5];

void setup() {
  size(400, 300);
  background(220, 230, 240);
  for (int i = 0; i < colony.length; i++) {
    colony[i] = new Bacteria(width / 2, height / 2, colorArray[(int)(Math.random() * colorArray.length)]);
  }
}

void draw() {
  background(220, 230, 240);
  // fill(230, 240, 250, 15);
  // noStroke();
  // rect(0, 0, width, height);
  for (Bacteria bacteria : colony) {
    bacteria.move();
    bacteria.show();
  }
  for (int i = 0; i < wordArray.length; i++) {
    wordArray[i] = new Word("frog");
    wordArray[i].show();
  }
}

class Bacteria {
  int myX, myY, myC;

  // requires starting coordinate and color
  Bacteria(int x, int y, int c) {
    myX = x;
    myY = y;
    myC = c;
  }

  void move() {
      myX += (int)(Math.random() * 3) - 1;
      myY += (int)(Math.random() * 3) - 1;
    if (myX <= 0) {
      myX += (int)(Math.random() * 3);
    } else if (myX >= width) {
      myX -= (int)(Math.random() * 3);
    }
    if (myY <= 0) {
      myY += (int)(Math.random() * 3);
    } else if (myY >= height) {
      myY -= (int)(Math.random() * 3);
    }
  }

  void show() {
     noStroke();
    // color
    fill(myC);
    // face
    ellipse(myX, myY, 30, 20);
    // eye balls
    ellipse(myX - 8, myY - 8, 10, 10);
    ellipse(myX + 8, myY - 8, 10, 10);
    // black
    fill(0);
    // eyes
    ellipse(myX - 8, myY - 8, 5, 5);
    ellipse(myX + 8, myY - 8, 5, 5);
    // nostrils
    ellipse(myX - 2.5, myY, 1.5, 1.5);
    ellipse(myX + 2.5, myY, 1.5, 1.5);
    // mouth
    noFill();
    stroke(0);
    arc(myX, myY, 15, 10, 0, PI);
  }
}

class Word {
  int myX, myY, myS;
  Word(String s) {
    myX = (int)(Math.random() * width - 20);
    myY = (int)(Math.random() * height - 10);
    myS = s;
  }
  
  void show() {
    fill(0);
    text(myS, myX, myY);
  }
}
