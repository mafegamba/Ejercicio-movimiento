
int x = 0, y, direction=1;
int x2 = 500, y2, direction2=-1;

void setup() {
  size (500, 500);
  noStroke ();
}

void draw () {
  background (255);

  // cielo
  fill(40, 210 - x / 3, 255 - x / 3);
  rect(0, 0, width, height / 2);

  // luna
  fill (240);
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

  //pasto
  fill(54, 179, 0);
  rect(0, height / 2, width, height);

  // carretera
  fill (38, 2, 41);
  rect(0, 300, width, 150);

  // division carretera
  fill( 255);
  rect (0, 375, width, 10);

  //ellipse (x,y, 200, 200);

  // carro 1 cuerpo
  fill (250, 50, 0);
  quad (x, 340, x + 100, 340, x + 100 - 10, y+290, x + 10, y+290);

  quad (x+10, 290, x+70, 290, x+60, 265, x+10, 265);

  fill (225, 255, 255);
  quad (x+12, 285, x+67, 285, x+60, 268, x+12, 268);

  //llantas
  fill (0);
  ellipse (x+25, 340, 40, 40);

  fill (0);
  ellipse (x+75, 340, 40, 40);

  //carro 2
  fill (54, 34, 255);
  quad (x2, y + 30, x2 + 100, y + 30, x2 + 90, y + 50, x2 + 10, y + 50);

  quad (x+10, 290, x+70, 290, x+60, 265, x+10, 265);

  fill (225, 255, 255);
  quad (x+12, 285, x+67, 285, x+60, 268, x+12, 268);






  x = x + 1 * direction;
  if ((x > width) || (x < 0)) {
    direction = direction * -1;
  }

  if ((x2 < width) || (x > 500)) {
    direction2 = direction2 * -1;}
}
