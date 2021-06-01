// Clase 3 de Meteorito que será usado en el juego como los obstaculos que se deben evitar, ya que en caso de tocarlos se pierden puntos
class Meteorito {
  //Variable que se van a usar para la posicion en X y en Y. 
  float posX;
  float posY;
  //Variable que se van a usar para el movimiento en  en X y en Y.   
  float movX;
  float movY;
  

 
  //Variables que se usaran en el ecositema para formar los meteoritos
  public Meteorito(int posXinicial, int posYinicial, int X, int Y) {
    //Renombrar las varibles que se usarán
    posX=posXinicial;
    posY=posYinicial;
    movX=X;
    movY=Y;
 
  }
  //Void que dibuja el meteorito y reemplaza sus valores de X y Y por las variables declaradas en el inicio de la clase
  void dibujarse () {

    //Relleno rojo
    fill(159, 26, 0);
    //Circulo del meteorito
    ellipse(posX+137, posY+200, 25, 25);
    //Relleno negro de las puntas del meteorito
    fill(0);
    //Diferentes triangulos del meteorito
    triangle(posX+129, posY+192.281, posX+123.172, posY+178.4526, posX+134.244, posY+ 188.520);
    triangle(posX+146.135, posY+ 176.79, posX+142.272, posY+191.25, posX+136.850, posY+ 186.9);
    triangle(posX+160.65, posY+187.5402, posX+149.376, posY+197, posX+146.156, posY+192);
    triangle(posX+141.411, posY+205.7, posX+145.881, posY+202, posX+151, posY+216.37);
    triangle(posX+131.246, posY+204.634, posX+ 136.009, posY+208.264, posX+124, posY+218);
    triangle(posX+128.391, posY+197.07, posX+127.965, posY+202, posX+113.459, posY+ 198);
  }

  }
 
