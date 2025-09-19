/**Se crea la clase Escenario*/
class Escenario extends GameObject {
  private PImage ruta, escena; /** son las imagenes de nuestro escenario*/

/**Constructor parametrizado de la clase Escenario*/
  public Escenario(PVector posicion) { 
    super(posicion); /** la posicion que hereda de gameObject*/
    this.ruta=loadImage("pista4.png");
    this.escena=loadImage("escena.png");
  }

/**Metodo para dibujar el escenario*/
  public void display() {
    image(escena, 0, 0); /** la primer imagen escena comienza en x=0 e y=0*/
    image(ruta, this.posicion.x, this.posicion.y); 
    image(ruta, this.posicion.x, this.posicion.y - ruta.height); 
    this.posicion.y = this.posicion.y+150*Time.getDeltaTime(frameRate); /** la ruta se desplaza hacia abajo*/
    if (this.posicion.y > ruta.height) { /** si la ruta llega al fin vuelve a comenzar el desplazamiento*/
      this.posicion.y=0;
    }
  }
}
