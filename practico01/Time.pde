static class Time{
  
  /** El metodo estatico deltaTime para mantener un movimiento fluido*/
  static float getDeltaTime(float frames){
    int framesPorSegundo = round(frames);
    float deltaTime = 1.0/framesPorSegundo;
    return deltaTime;
  }
}
