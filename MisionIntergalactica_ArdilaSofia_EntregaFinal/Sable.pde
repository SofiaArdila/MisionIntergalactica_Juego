//Clase 5 del sable. En el juego es  el instrumento para atrapar los diferentes iconos. Este situa su mango en la Luna 
//(espacio seguro) y la luz en la galaxia
class Sable {
  //Variable usada para el tamaño de ancho del sable de luz.
  float maxSable;
  //Variable de la imágen del rayo del luz 
  PImage Luz;
  //Variable X y Y 
  float posX;
  float posY;

  Sable(float posXinicial, float posYinicial) {
    //Reenombrar posX y posY
    posX=posXinicial;
    posY=posYinicial;


    //Cargar imágen de la luz
    Luz=loadImage ("Luz1.png");
    imageMode(CENTER);
  }
  //Void para dibujar el sable 
  void dibujarse() {

    //map usado para establecer nuevos valores del mouseX
    maxSable = map(mouseX, 0, 80, 0, 50);

    //Cuadradro del sable de luz que se mueve. Este cambia su largo al mover el mouse en x hacia los lados. 
    //El movimiento de este es en espejo, es decir si muevo el mouse hacia la izquierda, mi sable se alargara  hacia la derecha.

    //Esto con el objetivo de brindar dificultad al coger o evitar los diferentes iconos del juego. PARTE ROSADA QUE SE MUEVE 



    //Relleno rosa de la luz 
    fill (230, 0, 126, 100);
    rect(posX, 432, -maxSable, 16);

    fill (230, 0, 126, 200);
    rect(posX, posY, -maxSable, 10.15);

    fill (255, 255, 255, 90);
    rect(posX, 437, -maxSable, 5.15);

    // imágen del rayo del luz 
    image(Luz, (posX-maxSable)+325, posY-6);
    //Relleno gris del mango del sable
    fill (135, 135, 135);
    //Cuadrado del sable gris
    rect (490.88, 429.58, 217.016, 19.9937 );
    //Relleno del boton cuadrado del sable
    fill (190, 22, 34);
    //Boton del sable
    rect (558.79, 419.35, 9.46, 15.18);
  }
  //}  rect (190, 22, 34);
  //Boton del sable
  //  rect (558.79, 419.35, 9.46, 15.18);
  //}
} 
