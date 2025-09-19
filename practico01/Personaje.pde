/**
*Representa al jugador o usuario
+@autor: Aramayo Matias Nahuel
*/
class Personaje extends GameObject {
  private PVector velocidad; /** es la velocidad del auto*/
  private PImage img; /** es la imagen que necesitamos del auto*/
  private int tamanio; /** es el tamanio que asignamos a la imagen*/

/**Constructor parametrizado de la clase Personaje*/
  public Personaje(PVector posicion, PVector velocidad, int tamanio) {
    super(posicion); /**Es la posicion heredada de gameObject*/
    this.velocidad = velocidad; 
    this.tamanio = tamanio;
    this.img = loadImage("AutoAmarillo.png");

  }
/** El metodo para dibujar el auto*/
  public void display() {
    image(img, this.posicion.x, this.posicion.y, tamanio, 100);
  }
/** Permite poder mover el auto en 4 direcciones */
  public void mover(int direccion) {
    if (direccion==0) {
      this.posicion.x-=this.velocidad.x*Time.getDeltaTime(frameRate);
    }
    if (direccion==1) {
      this.posicion.x+=this.velocidad.x*Time.getDeltaTime(frameRate);
    }
    if (direccion==2) {
      this.posicion.y-=this.velocidad.y*Time.getDeltaTime(frameRate);
    }
    if (direccion==3) {
      this.posicion.y+=this.velocidad.y*Time.getDeltaTime(frameRate);
    }
  }
/**Metodo para obtener los hongos*/
    boolean obtenerHongo(PVector hongo) {
    float d = dist(posicion.x, posicion.y, hongo.x, hongo.y); /** si la distancia entre el hongo y el auto es menor a 20 se obtiene el hongo*/
    if (d<20) {
      return true;
    } else {
      return false;
    }
  }
  
}
