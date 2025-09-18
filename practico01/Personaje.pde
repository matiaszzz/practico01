class Personaje extends GameObject {
  private PVector velocidad;
  private PImage img;
  private int tamanio;

  public Personaje(PVector posicion, PVector velocidad, int tamanio) {
    super(posicion);
    this.velocidad = velocidad;
    this.tamanio = tamanio;
    this.img = loadImage("AutoAmarillo.png");

  }

  public void display() {
    image(img, this.posicion.x, this.posicion.y, tamanio, 100);
  }

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
    
    boolean obtenerHongo(PVector hongo) {
    float d = dist(posicion.x, posicion.y, hongo.x, hongo.y);
    if (d<20) {
      return true;
    } else {
      return false;
    }
  }
  
}
