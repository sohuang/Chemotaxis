int numBacteria = 15;
Bacteria[] colony = new Bacteria[numBacteria];
int LAVEN = color(200, 180, 230);
int FLUSH = color(161, 176, 201);
int DRAIN = color(184, 212, 200);
int GREEN = color(201, 217, 139);
int CREAM = color(242, 229, 182);
int[] colorArray = {LAVEN, FLUSH, DRAIN, GREEN, CREAM};

void setup() {
	size(200, 200);
	background(255);
	for (int i = 0; i < colony.length; i++) {
		colony[i] = new Bacteria(width / 2, height / 2, colorArray[(int)(Math.random() * colorArray.length)]);
	}
}

void draw() {
	fill(255, 255, 255, 15);
	noStroke();
	rect(0, 0, width, height);
	for (Bacteria bacteria : colony) {
		bacteria.move();
		bacteria.show();
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
		myX += (int)(Math.random() * 5) - 2;
		myY += (int)(Math.random() * 5) - 2;
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
		fill(myC);
		ellipse(myX, myY, 5, 5);
	}
}