class Walker {
  int myX, myY;

  Walker() {
    myX = (int)(Math.random() * 500) + 1;
    myY = (int)(Math.random() * 500) + 1;
  }

void walk() {
  if (mousePressed) {
    myX += (mouseX - myX) / 10;
    myY += (mouseY - myY) / 10;
  } else {
    myX += (int)(Math.random() * 21) - 10;  // Range -10 to +10
    myY += (int)(Math.random() * 21) - 10;

    if (myX < 0) myX = 0;
    if (myX > width) 
    myX = width;
    if (myY < 0) 
    myY = 0;
    if (myY > height) 
    myY = height;
  }
}

  void show() {
    int randomColor1 = (int)(Math.random() * 255) + 1;
    int randomColor2 = (int)(Math.random() * 255) + 1;
    int randomColor3 = (int)(Math.random() * 255) + 1;
    fill(randomColor1, randomColor2, randomColor3, 10);
    ellipse(myX, myY, 30, 30);
  }
}
Walker[] circles;

void setup() {
  size(500, 500);
  background(0);
  circles = new Walker[150];
  for (int i = 0; i < circles.length; i++) {
    circles[i] = new Walker();
  }
}

void draw() {
  background(0);  // Clear background each frame
  for (int i = 0; i < circles.length; i++) {
    circles[i].walk();
    circles[i].show();
  }
}
