Bacteria[] colony;
Bacteria test;

void setup()
{
	//initialize bacteria variables here
	size(400, 400);
	background(255);
	test = new Bacteria(width / 2, height / 2, color(200, 180, 230));
}
void draw()
{
	//move and show the bacteria
	
	test.move();
	test.show();
}
class Bacteria
{
	int myX, myY, myC;

	// requires starting coordinate and color
	Bacteria(int x, int y, int c) {
		myX = x;
		myY = y;
		myC = c;
	}

	void move() {
		myX += (int)(Math.random() * 10) - 5;
		myY += (int)(Math.random() * 10) - 5;
	}

	void show() {
		// noStroke();
		fill(myC);
		ellipse(myX, myY, 5, 5);
	}
}