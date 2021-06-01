// Entrega final Misión intergaláctica

//Para esta entrega use los iconos de los pinceles del ejercicio de interacción
//El Juego está inspirado en "Pesca en el hielo" de club penguin

//Nombre del juego: Misión intergaláctica (Rescate de personajes de starwars en la galaxia)



////////////////////////////////////////////////////////////////////////////////////////////////////////
//ESTADOS
//Variable de estado
int estado;
//Estados del juego
int  INICIO= 0;
int  INSTRUCCIONES= 1;
int  INSTRUCCIONES2= 2;
int  HANSOLO=3;
int  PLEIA=4; //Este estado no se usará en la entrega final, ya que el juego sólo se está diseñando hasta el nivel HANSOLO
int  GAMEOVER=5;
int  CUMPLIDO=6;
int  SALIDA=7;


//Modelar puntajes
//Tabla de puntaje
Table puntajes;

//Contador de puntaje 
int contadorPuntaje;
//Contador de las vidas
int contadorVidas= 3;


//Arreglo para poder hacer varios los yodas que salgan de la parte superior del canvas
Yoda[] yoditaArriba; 
//variable para establecer el número de yoditas que quiero formar
int numYoditas = 3;
//Arreglo para poder hacer varios los yodas que salgan de la parte inferior del canvas
Yoda[] yoditaAbajo; 
//Clase de los lunares
Lunares lunar1;
//Arreglo para poder hacer varias estrellas y la clase de las estrellas 
Estrellitas [] estrellas;
//Variable para hacer 8 ellipses que representan las estrellas
int numEstrellitas = 8;
//clase del sable de star wars que en el juego representa
// el instrumento para "pescar" los iconos del juego
Sable tamSable;
//Arreglo para poder hacer varias princesas leias en la parte superior del canvas
PrincesaLeia [] leiaArriba;
//Valiable para tener el número de princesas que se crean
int numPrincesa = 1;
//Arreglo para poder hacer varias princesas leias en la parte inferior del canvas
PrincesaLeia [] leiaAbajo;
//Arreglo para poder hacer varios meteoritos y la formación de la clase Meteoritos
Meteorito []meteorito1;

//Variable para formar la cantidad de meteoritos que se quieren crear
int numMeteorito= 5 ;
//Arreglo para poder hacer varios Ewok que salgan de la parte superior de la pantalla
Ewok []ewokArriba;
//Variable que indica el número de Ewoks que se van a atrapar 
int numEwok = 20;
//Arreglo para poder hacer varios Ewok que salgan de la parte inferior de la pantalla
Ewok []ewokAbajo;

//LAS IMAGENES SE USARON EN EL CÓDIGO COMO ALTERNATIVA PARA PONER EL EFECTO EN LA TIPOGRAFIA QUE SE DESEABA 
//Variable para poner la imágen con la letra del nombre del juego
PImage misionIntergalactica;
//Clase de los iconos que van a decorar el canvas de la pantalla de INICIO
IconosDeco iconos ;
//Clase de los iconos que explicas las instrucciones2 del juego 
IcoInstru instru;
//Variable para poner la imágen con la letra de GAME OVER
PImage gameOver;
//Variable para poner la imágen con las palabras  de volver al menu principal
PImage menuPrincipal;
//Variable para poner la imágen con la palabra de INSTRUCCIONES
PImage instrucciones;
//Variable de la imágen con la palabra de Cumpliste la misión 
PImage cumpliste;
//Variable de la imágen del rayo del luz 
PImage Luz1;
//Clase de las vidas del sable de vidas
SableVidas vidas;
//Clase Meteorito1 de meteo
Meteo meteo2;
//Clase Han de HanIco
HanIco han;
//Variable de la explosión del radio en la salida del juego
int radioExplosion;

//Variables tipografía
//inicio
PFont quincy;
//Instrucciones
PFont quincyS;


//Importar Sonido Ewoks que desaparecen 
import processing.sound.*;
//Ewoks que desaparecen 
SoundFile Cancion;

//Juego musica 
SoundFile StarWars;

//Suena si los Blaster tocan todo el sable

SoundFile Sable;

//Sonido Del inicio del juego
SoundFile Intro;

//Variable para cambiar el volumen en la musica que suena durante el juego 
float controlVol;

////////////////////////////////////////////////////////////////////////////////////////////////////////

void setup() {

  //Tamaño del espacio de trabajo
  size(800, 800);
  //Canción Ewoks que desaparecen 
  Cancion =new SoundFile (this, "DesaparecerEwok.mp3");

  //Cancion Star wars 
  StarWars =new SoundFile (this, "StarWars.mp3");

  //Cancion sable de luz
  Sable =new SoundFile (this, "SableLuz.mp3");

  //Canción intro del juego
  Intro =new SoundFile (this, "Intro.mp3");

  //Puntajes crear la tabla
  //Lo comente después de ejecutarlo una vezpara que se guarden todos los puntajes

  //puntajes=new Table();

  //puntajes.addColumn ("Fecha");
  //puntajes.addColumn ("Puntaje Ewoks");
  //puntajes.addColumn ("Vidas");

  //TablaPuntajes 

  puntajes=loadTable("data/Puntajes.csv", "header");

  //Estado de inicio del juego 
  estado = INICIO;
  //Cargar la imágen con las palabras del inico del juego
  misionIntergalactica= loadImage("Letra_MISION_INTERGALÁCTICA.png");
  imageMode(CENTER);
  //Cargar la imágen con las palabras de game over  
  gameOver= loadImage("Game_over_letra.png");
  imageMode(CENTER);
  //Cargar font de Quincy
  quincy = createFont ("Quincy CF.ttf", 40);
  quincyS = createFont ("Quincy CF.ttf", 26);
  //Cargar la imágen con las palabras de menuprincipal
  menuPrincipal= loadImage("menuPrincipal.png");
  imageMode(CENTER);
  //Cargar la imágen con las palabras de game over  
  instrucciones= loadImage("instrucciones.png");
  imageMode(CENTER);
  //Cargar imágen de mision cumplida
  cumpliste=loadImage ("Misión.Cumplida.png");
  imageMode(CENTER);

  //Cargar imágen de la luz
  Luz1=loadImage ("Luz2.png");
  imageMode(CENTER);

  //Variable de la explosión del radio
  radioExplosion = 5;
  //Este pedazo del codigo no se usará en entrega final ya que pertenece al nivel de la Luke 
  //codigo para que el yoditaArriba se forme con la variable del numero de yoditas
  //1
  yoditaArriba = new Yoda [numYoditas];
  //For para controlar el numero de yoditas que se deben formar 
  for (int i = 0; i < numYoditas; i ++) {
    //Clase formada con las variables establecidad en "Yoda"
    yoditaArriba[i]= new Yoda(int(random (0, width/2)), int(random (-100, 0)));
  } 
  //codigo para que el yoditaAbajo se forme con la variable del numero de yoditas
  yoditaAbajo = new Yoda [numYoditas];
  //For para controlar el numero de yoditas que se deben formar 
  for (int i = 0; i < numYoditas; i ++) {
    //Clase formada con las variables establecidad en "Yoda" con una posicion en X y Y aleatoria
    yoditaAbajo[i]= new Yoda(int(random (0, width/2)), int(random (1000, 0)));
  }
  //1

  //Clase formada con las variables de Lunares 
  lunar1= new Lunares(654.661, 203.58);


  //codigo para que Estrellas se forme con la variable del numero de estrellitas
  estrellas = new Estrellitas [numEstrellitas];
  //For para controlar el numero de estrellas que se deben formar 
  for (int i = 0; i < numEstrellitas; i ++) {
    //Clase formada con las variables establecidad en "Estrellitas"    
    estrellas[i]= new Estrellitas(int(random (0, width/2)), int(random (0, height)));
  }
  //TamSable se forma con la clase de sable
  tamSable = new Sable(491.93, 434.50);
  //Vidas de la clase sable vidas
  vidas = new SableVidas();
  //iconos se forma de la clase de iconosDeco
  iconos = new IconosDeco();
  //iconos se forma de la clase de IcoInstru
  instru = new IcoInstru();
  //Meteorito se forma de la clase de Meteo
  meteo2 = new Meteo();
  //Han se forma de la clase de HanIco
  han = new HanIco();

  //Este pedazo del codigo no se usará en entrega final ya que pertenece al nivel de la princesa leia
  //codigo para que LeiaArriba se forme con la variable del numero de Princesa
  //1
  leiaArriba = new PrincesaLeia [numPrincesa];
  //For para controlar el numero de princesas que se deben formar  
  for (int i = 0; i < numPrincesa; i ++) {
    //Clase formada con las variables establecidad en "PrincesaLeia" Variables aleatorias en X y Y
    leiaArriba[i]= new PrincesaLeia(int(random (0, width/2)), int(random (-100, 0)));
  } 
  //codigo para que LeiaAbajo se forme con la variable del numero de Princesa
  leiaAbajo = new PrincesaLeia [numPrincesa];
  //For para controlar el numero de princesas que se deben formar  
  for (int i = 0; i < numPrincesa; i ++) {
    //Clase formada con las variables establecidad en "PrincesaLeia" para tener una posicion  aleatorias en X y Y  
    leiaAbajo[i]= new PrincesaLeia(int(random (0, width/2)), int(random (1000, 0)));
  }
  //1
  //Codigo para fromar el arreglo de los Meteoritos1
  meteorito1 = new Meteorito [numMeteorito];

  for (int i = 0; i < numMeteorito; i ++) {

    meteorito1[i]= new Meteorito(int(random (0, width)), int(random (0, height)), int(random (-10, 10)), int(random (-10, 10)));
  } 

  //codigo para que el EwokArriba se forme con la variable del numero de yoditas
  ewokArriba = new Ewok [numEwok];
  //For para controlar el numero de Ewok que se deben formar 
  for (int i = 0; i < numEwok; i ++) {
    //Clase formada con las variables establecidad en "Ewok"
    ewokArriba[i]= new Ewok(int(random (0, width/2.5)), int(random (-2000, 0)), int(random (30, 300)));
  } 
  ewokAbajo = new Ewok [numEwok];
  //For para controlar el numero de yoditas que se deben formar 
  for (int i = 0; i < numEwok; i ++) {
    //Clase formada con las variables establecidad en "Ewok" con una posicion en X y Y aleatoria
    ewokAbajo[i]= new Ewok(int(random (0, width/2.5)), int(random (800, 4000)), int(random (60, 400)));
  }
  //Prueba de la música sonando durante todo el juego
  //StarWars.play();
  //StarWars.loop();
}

////////////////////////////////////////////////////////////////////////////////////////////////////////

void draw() {



  //1 Lo ejecuta si estoy en el INICIO del juego
  if (estado==INICIO) {
    if (Intro.isPlaying()==false)
    {
      Intro.play();
      Intro.loop();
    }
    //fondo de color morado para simular la galaxia   
    background(45, 31, 78);
    //Estrellas de la clase Estrellitas
    for (int i = 0; i <numEstrellitas; i ++) {
      estrellas[i].cambiardeColor();
      estrellas[i].dibujarse();
    }
    //Iconos que de dibujan en la pantalla INICIO de decoración 
    iconos.dibujarse();
    //IMAGEN del texto "MISIÓN INTERGALÁCTICA"
    image(misionIntergalactica, width/2, height/2 );

    //ZONA SENSIBLE PARA JUGAR Y PASAR AL ESTADO DE HANSOLO

    if ((mouseX>335.859)&&      
      (mouseX<335.859+121.425)&&  
      (mouseY>596.685)&&
      (mouseY<596.685+100)&&
      (mousePressed==true)) {
      estado=HANSOLO;
      //Que el puntaje y las vidas se reinicien al oprimir la Zona sensible 
      contadorPuntaje=0;
      contadorVidas=3;
      //Pedazo del código para que los Ewoks aparezcan en el estado HANSOLO cada vez que vuelva a ese estado
      for (int i = 0; i < numEwok; i ++) {
        //Clase formada con las variables establecidad en "Ewok" con una posicion en X y Y aleatoria
        ewokAbajo[i].posX=int(random (0, width/2.5));
        ewokAbajo[i].posY=int(random (800, 4000));
        ewokArriba[i].posX=int(random (0, width/2.5));
        ewokArriba[i].posY=int(random (-2000, 0));
        //println("Clic1");
      }
    }

    //println("Clic1");
    //zona sensible para pasar a las instrucciones del juego
    if ((mouseX>311.123)&&      
      (mouseX<311.123+177.351)&&  
      (mouseY>734.914)&&
      (mouseY<734.914+46.266)&&
      (mousePressed==true)) {
      estado=INSTRUCCIONES;
    }
  }

  //2 Lo ejecuta si estoy en las INSTRUCCIONES del juego
  else if (estado==INSTRUCCIONES) {
    noStroke();
    //fondo de color morado para simular la galaxia   
    background(45, 31, 78);
    //Imagen del titulo de las intrucciones 
    image(instrucciones, width/2, height/2 );
    //TamSable de la clase del Sablepara que en las instrucciones puedan ver como funciona
    tamSable.dibujarse();
    //TEXTO DE LAS INSTRUCCIONES
    fill(255);
    //Tipografia que se va usar
    textFont(quincyS);
    //Texto parte superior 
    textLeading(10);  // Set leading to 10
    text("Tu primera misión es rescatar los Ewok", 73, 189 );
    textLeading(20);  // Set leading to 20
    text("del imperio. Usa tu sable de luz. Para", 73, 214.526);
    textLeading(30);  // Set leading to 30
    text("esto, mueve tu mouse al lado contrario ", 73, 239);
    textLeading(40);  // Set leading to 30
    text("al que quieres ir. ", 73, 264);
    textLeading(50);  // Set leading to 30
    text("Puedes practicar acá un poco sobre como  ", 73, 289);
    textLeading(60);  // Set leading to 30
    text("usar tu sable de luz. ", 73, 314);  
    textFont(quincyS);  
    //Texto de instrucciones parte inferior        
    textLeading(10);  // Set leading to 10
    text("El imperio quiere evitar el rescate de", 73, 567 );
    textLeading(20);  // Set leading to 20
    text("los Ewok. Para ganarles debes evitar", 73, 592);
    textLeading(30);  // Set leading to 30
    text("que los blaster rojos toquen tu sable.", 73, 617);
    textLeading(40);  // Set leading to 30
    text("Mueve tu mouse a la izquierda de tu", 72, 642);
    textLeading(50);  // Set leading to 30
    text("pantalla, para evitar que pierdas tus vidas.", 72, 667);

    //Meteorito que aparece de manera aleatoria en la galaxia en la parte de las instrucciones
    //Se ubica para ayudar a los usuarios a practicar 
    //el valor de -200 y 200 para que el dibujo se salga de la pantalla 
    for (int i = 0; i < numMeteorito; i ++) {
      if (meteorito1[i].posX<-200 || meteorito1[i].posY<-200 ||meteorito1[i].posX>width+200 ||meteorito1[i].posY>height+200)
      {
        //si es 1 el valor entonces que aparezca desde arriba con random x
        int al=int(random(0, 2));
        if (al==1)
        {
          meteorito1[i].posX=random(0, width);
          meteorito1[i].posY=-198;
        } else
          //si el valor es 0 que aparezca desde al lado con random y
        {
          meteorito1[i].posY=random(0, height);
          meteorito1[i].posX=-198;
        }
      } else //si no ha salido de la pantalla, que se mueva con los parámetros que creamos al crear cada meteorito
      {
        meteorito1[i].posX=meteorito1[i].posX+meteorito1[i].movX;
        meteorito1[i].posY=meteorito1[i].posY+meteorito1[i].movY;
      }
      //Que meteorito se dibuje 
      meteorito1[i].dibujarse();
    }

    //Botones para pasar a diferentes estados/ pantallas del juego 
    //Icono del botón de "siguiente"
    fill(0);    
    stroke(246, 255, 42);
    strokeWeight(2);
    rect(491.303, 681.822, 120, 49.186);   
    //Texto del botón 
    fill(255);
    textFont(quincyS);
    text("Siguiente", 502, 713.638);
    //ZONA SENSIBLE BOTÓN "SIGUIENTE" PARA IR AL ESTADO DE INSTRUCCIONES
    if ((mouseX>491.303)&&      
      (mouseX<491.303+120)&&  
      (mouseY>681.822)&&
      (mouseY<681.822+49.186)&&
      (mousePressed==true)) {
      estado=INSTRUCCIONES2;
      //println("Clic1");
    }      

    //Cuadrado en la esquina superior derecha para el botón para volver al menú principal en el estado de HANSOLO

    stroke(246, 255, 42);
    strokeWeight(2);
    fill(0);
    rect(755.71, 8.686, 37.080, 39.287 );
    //X que indica volver al menú principal
    fill(255);
    textSize(22);
    text ('X', 767.484, 33.662);
    //ZONA SENSIBLE BOTÓN "SALIDA DEL JUEGO" PARA IR AL ESTADO DE SALIDA
    if ((mouseX>755.71)&&      
      (mouseX<755.711+37.080)&&  
      (mouseY>8.686)&&
      (mouseY<8.686+39.287)&&
      (mousePressed==true)) {
      estado=INICIO;
      //println("Clic1");
    } 

    //3 Estado dos de las instrucciones para la segunda parte    
    //Lo ejecuta si estoy si estoy en las instrucciones dos del juego
  } else if (estado==INSTRUCCIONES2) {
    //fondo de color morado para simular la galaxia   
    background(45, 31, 78);
    //Imagén con el titulo de las isntrucciones 
    image(instrucciones, width/2, height/2 );
    //TEXTO DE LAS INSTRUCCIONES
    fill(255);
    textSize(22);
    //Texto de instrucciones parte inferior 
    //Tomado de las referencias de processing 
    textLeading(10);  // Set leading to 10
    text("Para atrapar a los Ewok debes tocarlos", 73, 189 );
    textLeading(20);  // Set leading to 20
    text("con la punta brillante de tu sable de luz", 73, 214);
    textLeading(30);  // Set leading to 30
    text("¡Recuerda que debes atrapar 40 ewoks!", 73, 396.1507);
    textLeading(40);  // Set leading to 40
    text("Tienes 3 vidas para poder recatarlos, si ", 72, 604);
    textLeading(50);  // Set leading to 50
    text("se te agotan puedes reiniciar el juego y", 72, 629);
    textLeading(50);  // Set leading to 60
    text("practicar las veces que necesites.", 72, 654);

    //Clase de los iconos que decoran y ayudan a explicar el funcionamiento del juego
    instru.dibujarse();
    //Espacio del botón Lunar beige
    noStroke();
    fill(164, 138, 123);
    ellipse(682.852, 709.162, 130, 130);
    //Texto de inicio
    fill(255);
    textSize(23);
    text ("JUGAR", 653, 716);   

    //Cuadrado en la esquina superior derecha para el botón para volver al menú principal en el estado de HANSOLO

    stroke(246, 255, 42);
    strokeWeight(2);
    fill(0);
    rect(755.71, 8.686, 37.080, 39.287 );
    //X que indica volver al menú principal
    fill(255);
    textSize(22);
    text ('X', 767.484, 33.662);
    //ZONA SENSIBLE BOTÓN "SALIDA DEL JUEGO" PARA IR AL ESTADO DE INCIO
    if ((mouseX>755.71)&&      
      (mouseX<755.711+37.080)&&  
      (mouseY>8.686)&&
      (mouseY<8.686+39.287)&&
      (mousePressed==true)) {
      estado=INICIO;
      //println("Clic1");
    } 
    //Icono del botón de volver 
    fill(0);    
    stroke(246, 255, 42);
    strokeWeight(2);
    rect(120.417, 681.822, 120.674, 49.186);
    //Texto del botón 
    fill(255);
    textFont(quincyS);
    text("Volver", 145, 715);
    //ZONA SENSIBLE BOTÓN "Volver" PARA IR AL ESTADO DE INICIO
    if ((mouseX>120.417)&&      
      (mouseX<120.417+120.674)&&  
      (mouseY>681.822)&&
      (mouseY<681.822+49.186)&&
      (mousePressed==true)) {
      estado=INSTRUCCIONES;
      //println("Clic1");
    } 

    //ZONA SENSIBLE PARA JUGAR Y PASAR AL ESTADO DE HANSOLO

    if ((mouseX>633.597)&&      
      (mouseX<633.597+96.5224)&&  
      (mouseY>663.5525)&&
      (mouseY<663.5525+90.7017)&&
      (mousePressed==true)) {
      estado=HANSOLO;
      //Que el puntaje y las vidas se reinicien al oprimir la Zona sensible 
      contadorPuntaje=0;
      contadorVidas=3;
      //Código para repetir los meteoritos cuando vuelva a jugar
      for (int i = 0; i < numMeteorito; i ++) {
        if (meteorito1[i].posX<-200 || meteorito1[i].posY<-200 ||meteorito1[i].posX>width+200 ||meteorito1[i].posY>height+200)
        {
          //si es 1 el valor entonces que aparezca desde arriba con random x
          int al=int(random(0, 2));
          if (al==1)
          {
            meteorito1[i].posX=random(0, width);
            meteorito1[i].posY=-198;
          } else
            //si el valor es 0 que aparezca desde al lado con random y
          {
            meteorito1[i].posY=random(0, height);
            meteorito1[i].posX=-198;
          }
        } else //si no ha salido de la pantalla, que se mueva con los parámetros que creamos al crear cada meteorito
        {
          meteorito1[i].posX=meteorito1[i].posX+meteorito1[i].movX;
          meteorito1[i].posY=meteorito1[i].posY+meteorito1[i].movY;
        }
        //Que meteorito se dibuje 
        meteorito1[i].dibujarse();
      }
      //Pedazo del código para que cada vez que le de click al "jugar" salgan los ewoks de manera aleatoria en el juego
      for (int i = 0; i < numEwok; i ++) {
        //Clase formada con las variables establecidad en "Ewok" con una posicion en X y Y aleatoria
        ewokAbajo[i].posX=int(random (0, width/2.5));
        ewokAbajo[i].posY=int(random (800, 4000));
        ewokArriba[i].posX=int(random (0, width/2.5));
        ewokArriba[i].posY=int(random (-2000, 0));
      }
    }
  }




  // 3 Lo ejecuta si estoy en el estado de HANSOLO del juego
  else if (estado==HANSOLO) {
    controlVol = map(200, 300, 100, 1.0, 0.0);
    StarWars.amp(controlVol);
    if (Intro.isPlaying())
    {
      Intro.pause();
    }
    //Cancion de   StarWars durante el juego
    //IF para saber como ejecutar el juego
    if (StarWars.isPlaying()==false)
    {
      //Que suene la canción
      StarWars.play();

      //Que se repita siempre al terminar
      StarWars.loop();
    }
    noStroke();
    //Fondo morado que simula la galaxia del juego
    background(45, 31, 78);
    //Lunar1 de la clase Lunares 
    lunar1.colorearse();
    lunar1.dibujarsee();

    //Estrellas de la clase Estrellitas
    for (int i = 0; i <numEstrellitas; i ++) {
      estrellas[i].cambiardeColor();

      estrellas[i].dibujarse();
    }
    //TamSable de la clase del Sable

    tamSable.dibujarse();

    //Vidas de la clase de Sable Vidas en la parte superior de la pantalla
    vidas.dibujarse();

    //Cuadrado en la esquina superior derecha para el botón para volver al menú principal en el estado de HANSOLO
    stroke(246, 255, 42);
    strokeWeight(2);
    fill(0);
    rect(755.71, 8.686, 37.080, 39.287 );
    //X que indica volver al menú principal
    fill(255);
    textSize(22);
    text ('X', 767.484, 33.662);
    //ZONA SENSIBLE BOTÓN "SALIDA DEL JUEGO" PARA IR AL ESTADO DE SALIDA
    if ((mouseX>755.71)&&      
      (mouseX<755.711+37.080)&&  
      (mouseY>8.686)&&
      (mouseY<8.686+39.287)&&
      (mousePressed==true)) {
      estado=INICIO;
      //println("Clic1");
      if (StarWars.isPlaying())
      {
        StarWars.pause();
      }
    }
    noStroke();
    //INTERACCIÓN DEL JUEGO
    //Meteorito que aparece de manera aleatoria en la galaxia
    //el valor de -200 y 200 para que el dibujo se salga de la pantalla 
    for (int i = 0; i < numMeteorito; i ++) {
      if (meteorito1[i].posX<-200 || meteorito1[i].posY<-200 ||meteorito1[i].posX>width+200 ||meteorito1[i].posY>height+200)
      {
        //si es 1 el valor entonces que aparezca desde arriba con random x
        int al=int(random(0, 2));
        if (al==1)
        {
          meteorito1[i].posX=random(0, width);
          meteorito1[i].posY=-198;
        } else
          //si el valor es 0 que aparezca desde al lado con random y
        {
          meteorito1[i].posY=random(0, height);
          meteorito1[i].posX=-198;
        }
      } else //si no ha salido de la pantalla, que se mueva con los parámetros que creamos al crear cada meteorito
      {
        meteorito1[i].posX=meteorito1[i].posX+meteorito1[i].movX;
        meteorito1[i].posY=meteorito1[i].posY+meteorito1[i].movY;
      }
      //Que meteorito se dibuje 
      meteorito1[i].dibujarse();

      //Print para verificar que se mueva 
      //println(meteorito1[i].movX);
      // Calcular la distacia del meteorito y el sable 
      float distancia1=dist(meteorito1[i].posX+137.412, meteorito1[i].posY+50, tamSable.posX-tamSable.maxSable, tamSable.posY);
      //Si el meteorito toca el sable en X    
      if (meteorito1[i].posX+137.412>= tamSable.posX-tamSable.maxSable && meteorito1[i].posX+137.412 < tamSable.posX && meteorito1[i].posY+50>tamSable.posY-5 && meteorito1[i].posY+50<tamSable.posY+5) {
        //El número de vidas dismuye
        contadorVidas= contadorVidas-1;
        //Para probar si lo está tocadno 
        println("esta");
        Sable.play();
      }
    }

    //Ewok que aparecen de arriba a abajo

    for (int i = 0; i < numEwok; i ++) {
      ewokArriba[i].dibujarse();
      ewokArriba[i].moverse();
    } 

    //Booleano para saber si los Ewoks están arriba
    boolean todosArriba=true;

    //Arreglo para saber si se están tocando
    for (int i = 0; i < numEwok; i ++) {
      float distancia1=dist(ewokArriba[i].posX+137.412, ewokArriba[i].posY+50, tamSable.posX-tamSable.maxSable, tamSable.posY);
      fill(255, 0, 0);
      //println(distancia);
      //si la distancia es menor a 20 se pintan los ewoks por fuera de la pantalla, desaparecen
      if (distancia1 <20) {
        //Para ver cuando el Ewok toca el sable 
        //println("Funcionó");  
        //Ewoks que se dibujan fuera de la pantalla
        ewokArriba[i].posY=ewokArriba[i].posY-1000;
        //Contador de puntaje de los Ewoks
        contadorPuntaje = contadorPuntaje+1;
        //Sonido de explotar cuadno los ewoks desaparecen
        Cancion.play();
      }
      //If para que los Ewoks en posicion Y son mayores a la altura sean falsos
      if ( ewokArriba[i].posY<height) {
        todosArriba=false;
      }
    }

    //Ewok que aparecen de arriba a abajo
    for (int i = 0; i < numEwok; i ++) {
      //Ewoks que salen de abajo
      ewokAbajo[i].dibujarse();
      ewokAbajo[i].moverseArriba();
    } 
    //Interacción para determinar en que momento el Ewok toca el sable para ir contando los puntos 
    //Arreglo para saber si se están tocando
    for (int i = 0; i < numEwok; i ++) {
      float distancia=dist(ewokAbajo[i].posX+137.412, ewokAbajo[i].posY+50, tamSable.posX-tamSable.maxSable, tamSable.posY);   
      //si la distancia es menor a 20 se pintan los ewoks por fuera de la pantalla, desaparecen
      if (distancia <20) {
        //Para ver cuando el Ewok toca el sable 
        //println("lotocó");    
        //Ewoks que se dibujan fuera de la pantalla
        ewokAbajo[i].posY=ewokAbajo[i].posY-1000;
        //Contador de puntaje de los Ewoks
        contadorPuntaje = contadorPuntaje+1;
        //Sonido de explotar cuadno los ewoks desaparecen
        Cancion.play();
      }
    }
    //Condicionales para cambiar de estados 
    //if para estar cambiar del estado de GAMEOVER  al tener 0 vidas
    if ( contadorVidas<=-1) {



      // TABLAS
      // Variable 

      int mes= month();
      int dia= day();
      int hora= hour();
      int minuto= minute();

      //Fecha del juego

      String fecha_juego = mes+"-"+ dia+" " + hora+" : " +minuto;

      TableRow nuevaFila = puntajes. addRow();

      nuevaFila.setInt ("Puntaje Ewoks", contadorPuntaje);
      nuevaFila.setString ("Fecha", fecha_juego);
      nuevaFila.setInt ("Vidas", contadorVidas);

      saveTable(puntajes, "data/Puntajes.csv");

      //Cambiar de estado
      estado=GAMEOVER;
      //Las comenté porque quería que el pountaje final aparciera en los estados de cumplido y GameOVer
      ////Que el puntaje y las vidas se reinicien al oprimir la Zona sensible 
      //contadorVidas=3;
      //contadorPuntaje=0;
    }
    //Si llega a atrapar los 40 ewoks pasa el siguiente nivel. Pasa al estado Cumplido 
    if ( contadorPuntaje>=40) {

      //TABLAS
      // Variable 

      int mes= month();
      int dia= day();
      int hora= hour();
      int minuto= minute();

      //Fecha del juego

      String fecha_juego = mes+"-"+ dia+" " + hora+" : " +minuto;

      TableRow nuevaFila = puntajes. addRow();

      nuevaFila.setInt ("Puntaje Ewoks", contadorPuntaje);
      nuevaFila.setString ("Fecha", fecha_juego);
      nuevaFila.setInt("Vidas", contadorVidas );


      saveTable(puntajes, "data/Puntajes.csv");
      //Cambiar estado 
      estado=CUMPLIDO;
      ////Que el puntaje y las vidas se reinicien al oprimir la Zona sensible 
      //contadorPuntaje=0;
      //contadorVidas=3;
    }
    //SI todos los Ewoks estan arriba entonces pasan al estado de GAMEOVER
    if ( todosArriba==true) {
      estado=GAMEOVER;
      ////Que el puntaje y las vidas se reinicien al oprimir la Zona sensible 
      //contadorVidas=3;
      //contadorPuntaje=0;
    }
    //TEXTOS DE LOS PUNTAJES
    //Escribir el número de Ewoks tocados por el Sable
    fill(0);
    text("Ewok: "+contadorPuntaje, 615, 210.5842); //texto en el lunar superior de la luna
    //Escribir el número de vidas que tenga el jugador 
    fill(255);
    text(+contadorVidas, 69, 92);
    //StarWars.play();
  }
  //4 Este estado no se va a usar para la entrega final ya que se decidio sólo hacer el diseño del primer nivel HANSOLO
  else if (estado==PLEIA) {
    //Dibujar y mover las clases realizadas en las clases individuales
    //Yodas que aparecen de arriba a abajo
    for (int i = 0; i < numYoditas; i ++) {
      yoditaArriba[i].dibujarse();
      yoditaArriba[i].moverse();
    } 
    //Yodas que aparecen de abajo a arriba
    for (int i = 0; i < numYoditas; i ++) {
      yoditaAbajo[i].dibujarse();
      yoditaAbajo[i].moverseArriba();
    } 


    //Princesas que aparecen de arriba a abajo
    for (int i = 0; i < numPrincesa; i ++) {
      leiaArriba[i].dibujarse();
      leiaArriba[i].moverse();
    } 
    //Princesas que aparecen de abajo a arriba
    for (int i = 0; i < numPrincesa; i ++) {
      leiaAbajo[i].dibujarse();
      leiaAbajo[i].moverseArriba();
    }


    // 5 Lo ejecuta si estoy en el estado de GAMEOVER del juego
  } else if (estado==GAMEOVER) {
    if (StarWars.isPlaying())
    {
      StarWars.pause();
    }
    //Quitar la rayas de las figuras
    noStroke();
    //fondo de color negro para simular la galaxia   

    background(0, 0, 0, 2);
    //Lunar1 de la clase Lunares 
    lunar1.colorearse();
    lunar1.dibujarsee();

    //Estrellas de la clase Estrellitas
    for (int i = 0; i <numEstrellitas; i ++) {
      estrellas[i].cambiardeColor();
      estrellas[i].dibujarse();
    }
    //TamSable de la clase del Sable
    tamSable.dibujarse();
    //Vidas de la clase de Sable Vidas
    vidas.dibujarse();

    //Texto de "x" que muestra el número de vidas 
    fill(255);
    textSize(25);
    text('0', 69, 92);
    textFont(quincyS);
    textSize(22);
    //TEXTOS DE LOS PUNTAJES
    //Escribir el número de Ewoks tocados por el Sable
    fill(0);
    text("Ewok: "+contadorPuntaje, 615, 210.5842); //texto en el lunar superior de la luna
    //Escribir el número de vidas que tenga el jugador 
    //fill(255);
    //text(+contadorVidas, 69, 92);
    //Cuadrados del Game Over
    fill (157, 157, 157, 30);
    rect (152.0999, 136.7836, 265.898, 454.624);
    rect(171.838, 171.017, 226.422, 387.1291);

    //Cuadradros de "volver a jugar" del botón para volver al estado de HANSOLO
    stroke(246, 255, 42);
    strokeWeight(2);
    fill(0);
    rect(193.135, 430.219, 183.40, 98.3734 );
    //IMAGEN del texto "GAME OVER"
    image(gameOver, 370, 410);



    //Cuadradros de "SALIR DEL JUEGO" del botón para ir al estado de Salida

    noStroke();
    fill(45, 31, 78);

    rect(184, 622.890, 203.879, 120.756);
    //TEXTO de salida del juego 
    fill(255);
    textFont(quincy);  
    //Texto de instrucciones parte inferior        
    textLeading(10);  // Set leading to 10
    text("Salir del ", 220, 670 );
    textLeading(20);  // Set leading to 20
    text("juego", 243, 720);

    //Meteorito rojo que indica que se acabó el juego
    meteo2.dibujarse();

    //ZONA SENSIBLE BOTÓN "VOLVER AL JUEGO" PARA VOLVER AL ESTADO DE HANSOLO
    if ((mouseX>193.135)&&      
      (mouseX<193.135+183.40)&&  
      (mouseY>430.219)&&
      (mouseY<430.219+98.3734 )&&
      (mousePressed==true)) {
      estado=HANSOLO;
      //Que el puntaje y las vidas se reinicien al oprimir la Zona sensible 
      contadorPuntaje=0;
      contadorVidas=3;
      //Código para repetir los meteoritos cuando vuelva a jugar
      for (int i = 0; i < numMeteorito; i ++) {
        if (meteorito1[i].posX<-200 || meteorito1[i].posY<-200 ||meteorito1[i].posX>width+200 ||meteorito1[i].posY>height+200)
        {
          //si es 1 el valor entonces que aparezca desde arriba con random x
          int al=int(random(0, 2));
          if (al==1)
          {
            meteorito1[i].posX=random(0, width);
            meteorito1[i].posY=-198;
          } else
            //si el valor es 0 que aparezca desde al lado con random y
          {
            meteorito1[i].posY=random(0, height);
            meteorito1[i].posX=-198;
          }
        } else //si no ha salido de la pantalla, que se mueva con los parámetros que creamos al crear cada meteorito
        {
          meteorito1[i].posX=meteorito1[i].posX+meteorito1[i].movX;
          meteorito1[i].posY=meteorito1[i].posY+meteorito1[i].movY;
        }
        //Que meteorito se dibuje 
        meteorito1[i].dibujarse();
      }
      //Pedazo del código para que los Ewoks aparezcan en el estado HANSOLO cada vez que vuelva a ese estado
      for (int i = 0; i < numEwok; i ++) {
        //Clase formada con las variables establecidad en "Ewok" con una posicion en X y Y aleatoria
        ewokAbajo[i].posX=int(random (0, width/2.5));
        ewokAbajo[i].posY=int(random (800, 4000));
        ewokArriba[i].posX=int(random (0, width/2.5));
        ewokArriba[i].posY=int(random (-2000, 0));
        //println("Clic1");
      }
    }


    //ZONA SENSIBLE BOTÓN "SALIDA DEL JUEGO" PARA IR AL ESTADO DE SALIDA
    if ((mouseX>175.481)&&      
      (mouseX<175.481+203.879)&&  
      (mouseY>622.8908)&&
      (mouseY<622.8908+120.756)&&
      (mousePressed==true)) {
      estado=SALIDA;
      //Que el puntaje y las vidas se reinicien al oprimir la Zona sensible 
      contadorVidas=3;
      contadorPuntaje=0;
      //println("Clic1");
    }
  }

  //6 Lo ejecuta si estoy en el estado de CUMPLIDO
  else if (estado==CUMPLIDO) {
    //Quitar la rayas de las figuras
    noStroke();
    //fondo de color morado para simular la galaxia   
    background(45, 31, 78);
    //Lunar1 de la clase Lunares 
    lunar1.colorearse();
    lunar1.dibujarsee();

    //Estrellas de la clase Estrellitas
    for (int i = 0; i <numEstrellitas; i ++) {
      estrellas[i].cambiardeColor();
      estrellas[i].dibujarse();
    }
    //TamSable de la clase del Sable
    tamSable.dibujarse();
    //Vidas de la clase de Sable Vidas
    vidas.dibujarse();
    //Escribir el número de Ewoks tocados por el Sable// Puntaje final
    textFont(quincyS);
    textSize(22);
    fill(0);
    text("Ewok: "+contadorPuntaje, 615, 210.5842); //texto en el lunar superior de la luna
    //Escribir el número de vidas que tenga el jugador 
    fill(255);
    text(+contadorVidas, 69, 92);
    //Cuadrados del cumpliste la misión
    fill (157, 157, 157, 30);
    rect (152.0999, 136.7836, 265.898, 454.624);
    rect(171.838, 171.017, 226.422, 387.1291);

    //Cuadradros de "volver a jugar" del botón para volver al estado de HANSOLO
    stroke(246, 255, 42);
    strokeWeight(2);
    fill(0);
    rect(193.135, 430.219, 183.40, 98.3734 );

    //IMAGEN del texto "Cumpliste tu misión"
    image(cumpliste, 470, 390);


    //Cuadradros de "SALIR DEL JUEGO" del botón para ir al estado de Salida

    noStroke();
    fill(135, 135, 135);
    rect(184, 622.890, 203.879, 120.756);
    //TEXTO de salida del juego 
    fill(255);
    textFont(quincy);  
    //Texto de instrucciones parte inferior        
    textLeading(10);  // Set leading to 10
    text("Salir del ", 220, 670 );
    textLeading(20);  // Set leading to 20
    text("juego", 243, 720);
    //Icono de Han Solo que muestra como avanzó al siguiente nivel
    han.dibujarse();


    //ZONA SENSIBLE BOTÓN "SALIDA DEL JUEGO" PARA IR AL ESTADO DE SALIDA
    if ((mouseX>175.481)&&      
      (mouseX<175.481+203.879)&&  
      (mouseY>622.8908)&&
      (mouseY<622.8908+120.756)&&
      (mousePressed==true)) {
      estado=SALIDA;
      //Que el puntaje y las vidas se reinicien al oprimir la Zona sensible 
      contadorPuntaje=0;
      contadorVidas=3;
      //println("Clic1");
    } 

    //ZONA SENSIBLE BOTÓN "VOLVER AL JUEGO" PARA VOLVER AL ESTADO DE HANSOLO
    if ((mouseX>193.135)&&      
      (mouseX<193.135+183.40)&&  
      (mouseY>430.219)&&
      (mouseY<430.219+98.3734 )&&
      (mousePressed==true)) {

      estado=HANSOLO;
      //Que el puntaje y las vidas se reinicien al oprimir la Zona sensible 
      contadorPuntaje=0;
      contadorVidas=3;
      if (StarWars.isPlaying())
      {
        StarWars.pause();
      }
      //println("Clic1");

      if (StarWars.isPlaying()==false)
      {
        //Que suene la canción
        StarWars.play();

        //Que se repita siempre al terminar
        StarWars.loop();
      }
    }
    //Repetir los meteoritos cuando pasa el estado HANSOLO
    for (int i = 0; i < numMeteorito; i ++) {
      if (meteorito1[i].posX<-200 || meteorito1[i].posY<-200 ||meteorito1[i].posX>width+200 ||meteorito1[i].posY>height+200)
      {
        //si es 1 el valor entonces que aparezca desde arriba con random x
        int al=int(random(0, 2));
        if (al==1)
        {
          meteorito1[i].posX=random(0, width);
          meteorito1[i].posY=-198;
        } else
          //si el valor es 0 que aparezca desde al lado con random y
        {
          meteorito1[i].posY=random(0, height);
          meteorito1[i].posX=-198;
        }
      } else //si no ha salido de la pantalla, que se mueva con los parámetros que creamos al crear cada meteorito
      {
        meteorito1[i].posX=meteorito1[i].posX+meteorito1[i].movX;
        meteorito1[i].posY=meteorito1[i].posY+meteorito1[i].movY;
      }
      //Que meteorito se dibuje 
      meteorito1[i].dibujarse();
    }
    //Pedazo del código para que los Ewoks aparezcan en el estado HANSOLO cada vez que vuelva a ese estado
    for (int i = 0; i < numEwok; i ++) {
      //Clase formada con las variables establecidad en "Ewok" con una posicion en X y Y aleatoria
      ewokAbajo[i].posX=int(random (0, width/2.5));
      ewokAbajo[i].posY=int(random (800, 4000));
      ewokArriba[i].posX=int(random (0, width/2.5));
      ewokArriba[i].posY=int(random (-2000, 0));
      //println("Clic1");
    }
  }


  //6 Lo ejecuta si estoy en el  estado de salida 
  else if (estado==SALIDA) {
    //Que el puntaje y las vidas se reinicien al oprimir la Zona sensible 
    contadorPuntaje=0;
    contadorVidas=3;
    //fondo de color morado para simular la galaxia   
    background(45, 31, 78);
    //Estrellas de la clase Estrellitas
    for (int i = 0; i <numEstrellitas; i ++) {
      estrellas[i].dibujarse();
    }
    //Código tomado de "movimiento planetario estados" para formar en ellipse que cubra toda la pantalla para indicar que quiere salir del juego  
    noStroke();
    fill(255);
    //Ellipse blanco 
    ellipse(width/2, height/2, radioExplosion, radioExplosion);
    radioExplosion = radioExplosion+4;    
    //Si la explosion llena la pantalla se pone negro el fondo y sale el botón de "volver al menú principal"
    if (radioExplosion>width) {
      background(0);
      //Bóton de volver al menu principal
      stroke(246, 255, 42);
      strokeWeight(2);
      fill(0);
      rect(121.899, 285.895, 556.200, 228.209);
      stroke(246, 255, 42);
      //IMAGEN del texto "menuPrincipal"
      image(menuPrincipal, width/2, height/2);

      //ZONA SENSIBLE BOTON para volver al estado de INICIO
      if ((mouseX>121.899)&&      
        (mouseX<121.899+556.200)&&  
        (mouseY>285.895)&&
        (mouseY<285.895+228.209 )&&
        (mousePressed==true)) {
        estado=INICIO;
        if (StarWars.isPlaying())
        {
          StarWars.pause();
        }
        //println("Clic1");
      }
    }
  }
}


////////////////////////////////////////////////////////////////////////////////////////////////////////

////Condicionales para cambiar de los estados con letras del teclado para poder probar si están funncionado
//void keyReleased() {
//  //Al presionar la letra "a" en minuscula  puede volver al estado de inicio en cualquier momento del juego 
//  if (key == 'a') {
//    estado = INICIO;
//  } 
//  //  if (key == 'b') {
//  //    estado = HANSOLO;
//  //  } 
//  //  if (key == 'c') {
//  //    estado = INSTRUCCIONES;
//  //  } 
//  //  //if (key == 'b') {
//  //  //  estado = PLEIA;
//  //  //} 
//  //Si se presiona la letra d en minuscula te dirige al estado de gameover
//  //Se puede presionar la tecla en la estado HANSOLO para ver como se vería el juego al perder todas las vidas
//  if (key == 'd') {
//    estado = GAMEOVER;
//  }    
//  //Si se presiona la letra e  en minuscula te dirige al estado de gameover
//  //Se puede presionar la tecla en la estado Cumplido para ver como se vería el juego al completar el nivel de HANSOLO 
//  if (key == 'e') {
//    estado = CUMPLIDO ;
//  }
//} 
