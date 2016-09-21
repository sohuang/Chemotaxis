int numBacteria = 10;
Bacteria[] colony = new Bacteria[numBacteria];
int LAVENDER = color(200, 180, 230);

void setup() {
	size(400, 400);
	background(255);
	for (int i = 0; i < colony.length; i++) {
		colony[i] = new Bacteria(width / 2, height / 2, LAVENDER);
	}
}

void draw() {
	background(255);
	//move and show the bacteria
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
	}

	void show() {
		noStroke();
		fill(myC);
		ellipse(myX, myY, 5, 5);
	}
}