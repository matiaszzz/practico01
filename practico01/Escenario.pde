class Escenario extends GameObject {
  private PImage ruta, escena;

  public Escenario(PVector posicion) {
    super(posicion);
    this.ruta=loadImage("pista4.png");
    this.escena=loadImage("escena.png");
  }

  public void display() {
    image(escena, 0, 0);
    image(ruta, this.posicion.x, this.posicion.y);
    image(ruta, this.posicion.x, this.posicion.y - ruta.height);
    this.posicion.y = this.posicion.y+150*Time.getDeltaTime(frameRate);
    if (this.posicion.y > ruta.height) {
      this.posicion.y=0;
    }
  }
}
