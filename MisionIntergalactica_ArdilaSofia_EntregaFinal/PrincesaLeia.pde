//Clase 4 de la Princesa leia. 
//En el juego al cojer estos iconos tendrán más puntos positivos Debido a que van más rápido. está clase no se utiliza en el código actual
//Ya que en la entrega final sólo se hará el código del primer nivel
class PrincesaLeia {
  // Variables que voy a usar en las posisiones X y Y 
  int posX;
  int posY;
  //Variables que se usaran en el ecositema para formar las princesas
  public PrincesaLeia(int posXinicial, int posYinicial) {
    //Renombrar las variables 
    posX=posXinicial;
    posY=posYinicial;
  }
  //Void par dibujar a la princesa Leia
  void dibujarse() {
    //Cabeza de la princesa
    fill(228, 156, 109);
    ellipse(posX+56, posY+126.5, 31.02, 33.98);
    //Pelo de la princesa
    fill(0);
    ellipse(posX+69.5, posY+ 126.5, 8, 22);
    ellipse(posX+60.1787, posY+115.848, 15, 13);
    ellipse(posX+51.418, posY+115.865, 14, 13);
    ellipse(posX+42, posY+126, 8, 22);
  }
  //Void para mover a las princesas de arriba abajo en la galaxia en Y de manera aleatoria
  void moverse() {
    posY=int(posY+random(3, 6));
  } 
  //Void para mover a las princesas de  abajo a arriba en la galaxia en Y de manera aleatoria
  void moverseArriba() {
    posY=int(posY-random(3, 6));
  }
}
