//Clase 9 de los sables de luz que indican el número de vidas en la pantalla de HANSOLO
class SableVidas {
  //Relleno rosa de la luz 
  void dibujarse() {
    fill (230, 0, 126);

    rect(21.408, 1.868, 4.207, 57.870);
    //Relleno gris del mango del sable
    fill (135, 135, 135);
    //Cuadrado del sable gris
    rect(19.364, 59.7387, 8.310, 90.207);
    //Relleno del boton cuadrado del sable
    fill (190, 22, 34);
    //Boton del sable
    rect (28.771, 81.6494, 6.311, 3.932);

    //Texto de "x" que muestra el número de vidas
    fill(255);
    textSize(25);
    text('x', 44.632, 88.859);
  }
}
