int [] bord = new int [9];
int speler = 1;
boolean spelGestopt = false;

void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  tekenRaster();
}

void tekenRaster() {
  stroke(0, 130, 180);
  strokeWeight(4);
  for (int i = 0; i < 2; i++) {
    line(0, 200 + i * 200, 600, 200 + i * 200);
    line(200 + i * 200, 0, 200 + i * 200, 600);
    
  }
}

void mouseClicked() {
  if (!spelGestopt) {
    int x = mouseX / 200;
    int y = mouseY / 200;
    int index = x + y * 3;

    if (bord[index] == 0) {
      bord[index] = speler;
      if (speler == 1) {
        tekenKruis(x, y);
        if (heeftGewonnen(1)) {
          println("SPELER 1 HEEFT GEWONNEN!");
          
        }
        speler = 2;
      } else {
        tekenCirkel(x, y);
        if (heeftGewonnen(2)) {
          println("SPELER 2 HEEFT GEWONNEN!");
          
        }
        speler = 1;
      }
    }
  }
}

void tekenKruis(int x, int y) {
  stroke(140, 240, 140);
  line(x * 200, y * 200, x * 200 + 200, y * 200 + 200);
  line(x * 200 + 200, y * 200, x * 200, y * 200 + 200);
  
}

void tekenCirkel(int x, int y) {
  stroke(140, 240, 140);
  ellipse(x * 200 + 100, y * 200 + 100, 180, 180);
}

boolean heeftGewonnen(int speler) {
 if (bord [0] == speler && bord [1] == speler && bord [2] ==  speler) {
    return true;
  }
  if (bord [3] == speler && bord [4] == speler && bord [5] == speler) {
    return true;
  }
  if (bord [6] == speler && bord [7] == speler && bord [8] == speler) {
    return true;
  }
  if (bord [0] == speler && bord [3] == speler && bord [6] == speler) {
    return true;
  }
  if (bord [1] == speler && bord [4] == speler && bord [7] == speler) {
    return true;
  }
  if (bord [2] == speler && bord [5] == speler && bord [8] == speler) {
    return true;
  }
  if ( bord [2] == speler && bord [4] == speler && bord [6] == speler) {
    return true;
  }
  if ( bord [0] == speler && bord [4] == speler && bord [8] == speler) {
    return true;
  }
  return false;
}
