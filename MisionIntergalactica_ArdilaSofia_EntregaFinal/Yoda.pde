//Clase 6 de yoda. En el juego este serán los iconos de debe atrapar el sable para tener muchos puntos
//Esta clase no se usará ya que solo se diseño el primer nivel del juego
//En el juego al coger estos iconos tendrán más puntos positivos Debido a que van más rápido. está clase no se utiliza en el código actual

class Yoda {
  // Variables que voy a usar en las posisiones X y Y 
  int posX;
  int posY;


  //Variables que se usaran en el ecositema para formar a Yoda
  public Yoda(int posXinicial, int posYinicial) {
    //Renombrar las variables 
    posX=posXinicial;
    posY=posYinicial;
  }
  //En este void se dibujara Yoda
  void dibujarse() {
    //Orejas yoda
    fill(80, 146, 69);
    triangle (posX+83, posY+41, posX+65.5, posY+48, posX+65.5, posY+39);
    triangle (posX+35.5, posY+48.5, posX+17.42, posY+41.37, posX+36.42, posY+40.0);
    //Cara de yoda
    ellipse(posX+51, posY+45.5, 31, 31);
    //Ojos
    fill(0);
    ellipse(posX+44, posY+42, 9, 9);
    ellipse(posX+56, posY+ 42, 9, 9);
    fill(255);
    noStroke();
    ellipse(posX+44.26, posY+ 39.7, 2, 2);
    ellipse(posX+56, posY+39.78, 2, 2);
  }
  //Void para mover a Yoda de arriba abajo en la galaxia en Y de manera aleatoria
  void moverse() {
    posY=int(posY+random(0, 4));
  } 
  //Void para mover a Yoda de  abajo a arriba en la galaxia en Y de manera aleatoria
  void moverseArriba() {
    posY=int(posY-random(0, 4));
  }
}
