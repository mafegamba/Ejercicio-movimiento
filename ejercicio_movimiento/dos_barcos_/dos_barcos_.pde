int x = 0, y, direction = 1;
int x2 = 500, direction2 = -1; // segundo barco

void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  background(255); // limpia la pantalla en cada frame

  // cielo
  fill(40, 210 - x / 3, 255 - x / 3);
  rect(0, 0, width, height / 2);

  // luna
  //fill(190 + x / 4, 170 + x / 4, 0);
  fill (255, 255, 255);
  ellipse(2 * width / 3, 2 * height / 3 - 3 * x / 4, 100, 100);
  // crater luna

  fill (180);
  ellipse (1.85 * width / 3, 2 * height / 3 - 3 * x / 4, 10, 10);

  fill (100);
  ellipse (2.1 * width / 3, 2.1 * height / 3 - 3 * x / 4, 15, 15);

  fill (200);
  ellipse (2.01 * width / 3, 2.15 * height / 3 - 3 * x / 4, 5, 5);

  fill (220);
  ellipse (2.2 * width / 3, 1.9 * height / 3 - 3 * x / 4, 5, 5);

  //colorMode(HSB, 360, 100, 100);
  // mar
  fill(30, 93, 214);
  rect(0, height / 2, width, height);


  // bote 1 (izquierda a derecha)
  fill(245, 168, 198);
  y = (height / 2) - 10;
  quad(x, y, x + 100, y, x + 100 - 10, y + 20, x + 10, y + 20);

  // vela 1
  fill(100 + x / 2);
  triangle(x + 50, y - 3, x + 50, y - 50, x + 80, y - 3);

  // bote 2 (derecha a izquierda)
  fill(170, 200, 255);
  quad(x2, y + 30, x2 + 100, y + 30, x2 + 90, y + 50, x2 + 10, y + 50);

  // vela 2
  fill(180 + x2 / 4);
  triangle(x2 + 50, y + 27, x2 + 50, y - 20, x2 + 20, y + 27);

  // movimiento barco 1
  x = x + 1 * direction;
  if ((x > width) || (x < 0)) {
    direction = direction * -1;
  }

  // movimiento barco 2
  x2 = x2 + 1 * direction2;
  if ((x2 > width) || (x2 < 0)) {
    direction2 = direction2 * -1;
  }
}
