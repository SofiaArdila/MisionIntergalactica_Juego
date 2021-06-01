//Clase 11 de los meteoritos que se ubican para decorar el Game over 
class Meteo {
  void dibujarse () {
    noStroke();
    fill(159, 26, 0);
    //Circulo del meteorito
    ellipse(282.807, 246.85, 48, 48);
    //Relleno negro de las puntas del meteorito
    fill(0);
    //Diferentes triangulos del meteorito
    triangle(255.785, 206.698, 268.579, 233.7299, 277.421, 226.372);
    triangle(300.65, 203.454, 293.111, 231.707, 282.515, 227.2293);
    triangle(300.699, 234.05, 306.991, 243.687, 329.6993, 224.0578);
    triangle(311.463, 280.80, 300.1622, 253.11, 290.9319, 259.981 );
    triangle(258.346, 284.6277, 271.384, 258.4509, 280.872, 264.955);
    triangle(236.805, 244.93, 265.9842,242.995, 265.152, 254.46);
  }
}
