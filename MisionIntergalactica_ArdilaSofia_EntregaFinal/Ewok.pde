
//Clase 8 de Ewok, son los personajes que tendrán que atrapar para poder jugar
class Ewok {
  // Variables que voy a usar en las posisiones X y Y 
  float posX;
  float posY;
  int tiempoEs;

  //Variables que se usaran en el ecositema para formar a Ewok
  public Ewok(float posXinicial, float posYinicial, int tiempoEsp) {
    //Renombrar las variables 
    posX=posXinicial;
    posY=posYinicial;
    tiempoEs= tiempoEsp;
  }
  //En este void se dibujara Ewok
  void dibujarse() {
    //Orejas de Ewok
    strokeWeight(1);
    stroke(0);
    fill(147, 96, 55);
    ellipse( posX+126.035, posY+39.5578, 10.4483, 10.4483);
    ellipse( posX+147.934, posY+39.5578, 10.4483, 10.4483 );
    //Cara de Ewok
    ellipse(posX+137.412, posY+50, 32.3728, 32.3728);
    //Ojos
    stroke(0);
    ellipse(posX+133.55, posY+48.5407, 2.7, 2.7);
    ellipse(posX+141.7166, posY+48.5407, 2.7, 2.7);
    //nariz
    fill(0);
    noStroke();
    ellipse(posX+136.9487, posY+ 54.155, 1.758, 1.758);
    ellipse(posX+137.819, posY+53.107, 2.742, 2.742);
    ellipse(posX+138.839, posY+54.0814, 1.758, 1.758);
  }
  //Void para mover a ewok  de arriba abajo en la galaxia en Y de manera aleatoria
  void moverse() {
    if (tiempoEs<0) {
      posY=int(posY+random(0, 4));
    } else {
      tiempoEs = tiempoEs-10;
    }
  } 

  //Void para mover a ewok de  abajo a arriba en la galaxia en Y de manera aleatoria
  void moverseArriba() {
    if (tiempoEs<=0) {
      posY=int(posY-random(0, 4));
    } else {
      tiempoEs = tiempoEs-4;
    }
  }
} 
