//Clase 2 de lunares que van a ser el fondo de la luna y los lunares de la Luna. Decoración del fondo del luego
class Lunares {
  //Variable que se van a usar para la posicion en X y en Y. 
  float posX;
  float posY;
  //Variable que se va a usar en el cambio de color de los lunares de la luna
  color colorNuevo;
  //Variables que se usaran en el ecositema para formar los lunares 
  Lunares (float posXinicial, float posYinicial) {
    //Reenombrar posX y posY
    posX=posXinicial;
    posY=posYinicial;
  }
  //En este void va a estar la luna y los lunares
  void dibujarsee() {

    //Luna 
    fill (203, 187, 160);
    ellipse (964.837, 400, 947.909, 995.77559);

    //Lunares
    //Relleno del colorNuevo para luego cambiarlo en el void colorearse
    fill(colorNuevo);  
    //Tres ellipses que representan los lunares
    ellipse(654.661, 203.5842, 94.6451, 94.6451);
    ellipse(788.047, 363.38, 94.6451, 94.6451);
    ellipse(677.337, 599.354, 94.6451, 94.6451);
  }
  //Void en donde se realiza la condicion de cambio de color al presionar la letra r en minuscula.
  void colorearse() {
    //Color inicial beige
    colorNuevo= color (164, 138, 123);
    if (keyPressed) {   
      if (key== 'h') {
        //Color al presionar la letra r rosado nude
        colorNuevo= color(164, 98, 123);
        //Color al dejar de presionar la letra r beige, inicial
      } else {
        colorNuevo= color(164, 138, 123);
      }
    }
  }
}
