private Personaje pj;   /** declaracion del objeto personaje*/
private Escenario esc;  /** declaraion del objeto escenario*/
private Hongo hng;      /** declaracion del objeto homgo*/

/** Permite realizar la configuracion del juego.
*Se ejecuta una sola vez al inicio del juego.*/
void setup(){
  size(845,800);
  //Instanciacion de todos los objetos tambien se asigna un valor a sus variables
  pj = new Personaje(new PVector(400, 680), new PVector(450, 450), 50);
  esc = new Escenario(new PVector(-126, 5));
  hng = new Hongo(new PVector(int(random(200, 500)), int(random(0, 0))), new PVector(0, 200));
  frameRate(120); /** definicion de los fps*/
}
/** Se autoejecuta en forma de loop a una cantidad de fps*/
void draw(){
  esc.display();
  pj.display();
  hng.display();
  hng.mover();
  if (pj.obtenerHongo(hng.getPosicion())) {
        hng = new Hongo(new PVector(int(random(200, 500)), int(random(0, 0))), new PVector(0, 200));
      }
}
/** Se ejecuta para darle funcionamiento a las teclas que asignamos*/
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
