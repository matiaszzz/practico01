private Personaje pj;
private Escenario esc;
private Hongo hng;

void setup(){
  size(845,800);
  pj = new Personaje(new PVector(400, 680), new PVector(450, 450), 50);
  esc = new Escenario(new PVector(-126, 5));
  hng = new Hongo(new PVector(int(random(200, 500)), int(random(0, 0))), new PVector(0, 200));
}

void draw(){
  esc.display();
  pj.display();
  hng.display();
  hng.mover();
}

public void keyPressed(){
  if (key=='a') {
    pj.mover(0);
  }
  if (key=='d') {
    pj.mover(1);
  }
  if (key=='w') {
    pj.mover(2);
  }
  if (key=='s') {
    pj.mover(3);
  }
}
