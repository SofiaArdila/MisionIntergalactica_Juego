//Clase 1 de estrellitas que van aparecer en la galaxia. Decoración del juego en el fondo
class Estrellitas {
  //Variable que se van a usar para la posicion en X y en Y. 
  float posX;
  float posY;
  //Variable que se va a usar para el relleno de los circulos que hacen referencia a las estrellas
  color miColor;
  //Variables que se usaran en el ecositema para formar las estrellas
  Estrellitas (float posXinicial, float posYinicial) {
    posX=posXinicial;
    posY=posYinicial;
  }
  void dibujarse() {
    //Relleno del color principal de la las estrellas
    fill(miColor);
    //Circulo pequeño que representa las estrellas en la galaxia
    ellipse (posX+82.5572, posY+104.02, 15.25, 15.25);
  }
  //Void para cambiar el color al presionar la letra a
  void cambiardeColor() {
    //Color principal blanco
    miColor= color (255, 255, 255);
    if (keyPressed) {   
      if (key== 'j') {
        //Color verde que se cambia solo en el momento que se presiona la letra a. esta sólo puede estar en minuscula y si se deja 
        //de presionar vuelve a su color inicial (blanco)
        miColor= color(0, 255, 0);
      }
    }
  }
}
