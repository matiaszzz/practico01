/** Se crea la clase Hongo*/
class Hongo extends GameObject {
  private PImage imagen; /** es la imagen del hongo*/
  private PVector velocidad; /** es la velocidad la cual se mueve el hongo*/

/**Constructor parametrizado de la clase Hongo*/
  public Hongo(PVector posicion, PVector velocidad) {
    super(posicion); /** la posicion heredada de gameObject*/
    this.imagen=loadImage("honguito.png");
    this.velocidad = velocidad;
  }
  
 /** Metodo para dibujar el hongo*/
  public void display() {
    image(imagen, this.posicion.x, this.posicion.y, 60, 60); 
  }
  
  /** Metodo para que el hongo se desplace de arriba hacia abajo*/
  public void mover() {
    this.posicion.y += velocidad.y*Time.getDeltaTime(frameRate);
    if (this.posicion.y > 800) { /** Si el hongo sale de la pantalla la posicion comienza de nuevo en 0*/
      this.posicion.y=0;
    }
  }
/**Metodo getPosicion*/
  public PVector getPosicion() {
    return this.posicion;
  }
}
