//Clase 7 de los iconos que decoran el estado de INICIO del juego
class IconosDeco{

  void dibujarse() {
//Media Luna
    noStroke();
    fill (203, 187, 160);
    ellipse(397, 859, 590, 623);
//Sable vertical
    //Parte gris del sable
    fill (135, 135, 135);
    rect (688.292, 366.374, 28.422, 308.501);
    //Parte rosada del sable
    fill (230, 0, 126);
    rect (695.284, 92.7931, 14.4391, 275.0782);
    //Relleno del boton cuadrado del sable
    fill (190, 22, 34);
    //Boton del sable
    rect (709.672, 462.921, 21.5859, 13.449);
    
    //Iconos que decoran

    //Yoda
    //Orejas yoda
    stroke(2);
    fill(80, 146, 69);
    triangle (73.4996, 111.0149, 119.445, 107.131, 117.0376, 127.5098);
    triangle (234.184, 111.8685, 189.525, 128.1332, 188.3129, 107.194 );
    //Cara de yoda
    ellipse(154.551, 120.5831, 74.906, 74.9067);
    //Ojos
    fill(0);
    ellipse(137.710, 111.9808, 21.747, 21.747);
    ellipse(166.705, 112.2301, 21.747, 21.747);
    fill(255);
    noStroke();
    ellipse(138.402, 106.549, 3.5434, 3.5434);
    ellipse(167.484, 106.549, 3.5434, 3.5434 );

    fill(159, 26, 0);
    //Circulo del meteorito
    ellipse(583.198, 136.662, 48, 48);
    //Relleno negro de las puntas del meteorito
    fill(0);
    //Diferentes triangulos del meteorito
    triangle(556.177, 96.5099, 577.8132, 116.184, 568.9706, 123.5416);
    triangle(601.0498, 93.2666, 593.502, 121.5196, 582.906, 117.0411);
    triangle(601.0907, 123.8695, 607.383, 133.4992, 629.414, 114.268);
    triangle(600.553, 142.9281, 611.8553, 170.6167, 591.323, 149.7929 );
    triangle(581.2635, 154.766, 558.738, 174.439, 571.775, 148.262 );
    triangle(566.375, 132.8069, 565.543, 144.28, 537.196, 134.748 );
//EWOK
    //Orejas de Ewok
    stroke(2);
    fill(147, 96, 55);
    ellipse( 548.639, 480.693, 19.791, 19.791);
    ellipse( 590.150, 480.966, 19.791, 19.791);
    //Cara de Ewok
    ellipse(569.2587, 501.5855, 61.302, 61.302 );
    //Ojos
    stroke(0);
    ellipse(562.06, 498.940, 5.195, 5.195);
    ellipse(577.538, 499.0422, 5.195, 5.195);
    //nariz
    fill(0);
    noStroke();
    ellipse(568.0326, 509.255, 3.3306, 3.3306);
    ellipse(571.617, 509.278, 3.3306, 3.3306);
    ellipse(569.700, 508.900, 5.195, 5.195);
     //Espacio del botón Lunar beige
    fill(164, 138, 123);
    ellipse(397.43, 643.655, 171.224, 171.224);
    //Texto de jugar para iniciar el primer nivel del juego
    fill(255);
    textSize(70);
    textFont(quincy);
    text ("JUGAR", 340, 656);
    //cuadrado para llevar a las instrucciones del juego
    fill(164, 138, 123);
    rect(311.123, 734.914,177.351,46.266);
    //Texto de ¿cómo jugar?
    fill(255);
    textSize(25);
    text ("¿CÓMO JUGAR?", 314, 764 );
    }
        }
