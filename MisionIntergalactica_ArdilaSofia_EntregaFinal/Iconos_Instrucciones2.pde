//Clase 10 con los iconos que explican y decoran las instrucciones del jjuego
class IcoInstru {
 

  
  void dibujarse() {
    
    
    //Sable
    noStroke();
    //Parte gris del sable
    fill (135, 135, 135);
    rect (448.002, 291, 308.50, 28.422);
    //Parte rosada del sable
    fill (230, 0, 126);
    rect (174.4213, 298.341, 275.0782, 14.4391 );
    // imágen del rayo del luz 
    
    image(Luz1, width-290, height-500);
    
    //Relleno del boton cuadrado del sable
    fill (190, 22, 34);
    //Boton del sable
    rect (544.549, 276.805, 13.449, 21.5859);


    //EWOK
    //Orejas de Ewok
    strokeWeight(1);
    stroke(0);
    fill(147, 96, 55);
    ellipse( 131.963, 284.736, 19.791, 19.791);
    ellipse( 173.474, 284.736, 19.791, 19.791);
    //Cara de Ewok
    ellipse(152.582, 305.628, 61.302, 61.302 );
    //Ojos
    stroke(0);
    ellipse(145.392, 302.9836, 5.195, 5.195);
    ellipse(160.861, 302.9836, 5.195, 5.195);
    //nariz
    fill(0);
    noStroke();
    ellipse(151.35, 313.298, 3.3306, 3.3306);
    ellipse(153.940, 313.3218, 5.195, 5.195);
    ellipse(155.023, 312.944, 3.3306, 3.3306);


    //EWOK2
    //Orejas de Ewok
    strokeWeight(1);
    stroke(0);
    fill(147, 96, 55);
    ellipse( 131.963, 443.76, 19.791, 19.791);
    ellipse( 173.474, 443.76, 19.791, 19.791);
    //Cara de Ewok
    ellipse(152.582, 464.652, 61.302, 61.302 );
    //Ojos
    stroke(0);
    ellipse(145.392, 462.00, 5.195, 5.195);
    ellipse(160.861, 462.00, 5.195, 5.195);
    //nariz
    fill(0);
    noStroke();
    ellipse(151.35, 472.322, 3.3306, 3.3306);
    ellipse(153.940, 471.967, 5.195, 5.195);
    ellipse(155.023, 472.345, 3.3306, 3.3306);


    //Sable de vidas
    //Luz rosa
    fill (230, 0, 126);
    rect(446.882, 591.353, 4.207, 93.870);
    //Relleno gris del mango del sable
    fill (135, 135, 135);
    //Cuadrado del sable gris
    rect(444.498, 684.6513, 8.310, 90.207);
    //Relleno del boton cuadrado del sable
    fill (190, 22, 34);
    //Boton del sable
    rect (451.78, 717.576, 6.311, 3.932);

    //Texto de "x" que muestra el número de vidas
    fill(255);
    textSize(25);
    text('x', 465.5069, 700);
    text ("x 40", 188.017, 475.9743);
  }
}
