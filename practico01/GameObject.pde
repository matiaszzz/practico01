abstract class GameObject{
  protected PVector posicion; /** Posicion que heredan las clases*/
  
  /**Constructor que inicializa la posición del objeto*/
  public GameObject(PVector posicion){
    this.posicion = posicion;
  }
  
  /**Getter para obtener la posición del objeto*/
  public PVector getPosicion(){
    return this.posicion;
  }
}
