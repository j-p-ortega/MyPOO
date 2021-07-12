//Los objetos que usaremos:

Pieza ninguna; //Place holder vacio
PShape home;

int ruido=0;
int ruidoThreshold=15;

Pieza[] Tangram;
PImage[] Niveles = new PImage[5];
PVector[] posSilueta = new PVector[5];


//Definicion de parametros:
float d = 60; //dimension de las piezas. El codigo mantiene la proporcionalidad.
color azul = color(100,100,255);
color rojo = color(255, 100, 100);
color amarillo = color(255, 255, 100);
color verde = color(100, 255, 100);
color blanco = color(255);
color morado = color(200, 50, 255);
color naranja = color(255, 180, 100);
int screenState = 0; //Para saber qué pantalla deberíamos estar viendo
boolean mouseQ = true; //Para escoger si estamos jugando solo con el teclado
// o con teclado + raton

float horMove; //Para guardar el movimiento horizontal y vertical
float verMove; //cuando juguemos sin raton
int vel=1;   //Para ajustar la velocidad cuando juguemos sin raton

Pieza PiezaSelect=ninguna; //para guardar la pieza seleccionada cuando jugamos sin raton

void setup() {


  size(600, 600);
  stroke(4);

  Tangram = new Pieza[7];

  //Inicializadores de las piezas:

  Tangram[0] = new Quad(0, 0, naranja, false, 0, d, d, 3*d, d, 2*d, 0); //paralelogramo =0
  Tangram[1] = new Quad(3*d, d, azul, false, PI/4,0,sqrt(2)*d,sqrt(2)*d,sqrt(2)*d,sqrt(2)*d,0); //cuadrado =1
  Tangram[2] = new Triang(2*d, 2*d, rojo, false, 0,-2*d, -2*d, -2*d, 2*d); //granTriang1=2
  Tangram[2].rotar(-PI/2);
  Tangram[3] = new Triang(2*d, 2*d, amarillo, false, 0,-2*d, -2*d, -2*d, 2*d); //granTriang2=3
  Tangram[4] = new Triang(3*d, 3*d, verde, false, 0,-d, -d, d, -d); //miniTriang1=4
  Tangram[4].rotar(PI/2);
  Tangram[5] = new Triang(2*d, 2*d, morado, false, 0,-d, -d, d, -d); //miniTriang2=5
  Tangram[6] = new Triang(4*d, 0, blanco, false, 0,-2*d, 0, 0, 2*d); //medioTriang=6
  ninguna    = new Triang(0, 0, naranja, false, 0,-2*d, 0, 0, 2*d);




  home = loadShape("Home.svg");
  home.disableStyle();
  
  Niveles[0] = loadImage("lv1.png");
  Niveles[0].filter(THRESHOLD, 2);
  Niveles[0].resize(1090,0);
  Niveles[1] = loadImage("lvi2.png");
  Niveles[1].resize(527, 0);
  Niveles[1].filter(THRESHOLD, 2);
  Niveles[2] = loadImage("lvi3.png");
  Niveles[2].resize(750, 285);
  Niveles[2].filter(THRESHOLD, 2);
  Niveles[3] = loadImage("lvi4.png");
  Niveles[3].resize(352, 0);
  Niveles[3].filter(THRESHOLD, 2);
  Niveles[4] = loadImage("lvi5.png");
  Niveles[4].resize(374, 0);
  Niveles[4].filter(THRESHOLD, 2);
  
  posSilueta[0]= new PVector(-250,50);
  posSilueta[1]= new PVector(40,20);
  posSilueta[2]= new PVector(-80,140);
  posSilueta[3]= new PVector(120,120);
  posSilueta[4]= new PVector(120,90);
}

void draw() {

  background(140);

  //La idea de usar un switch y funciones auxiliares para mostrar las distintas
  //pantallas (niveles, menu, etc) la obtuve de
  //https://discourse.processing.org/t/how-to-make-a-game-start-menu-in-processing/6019/3
  //No obstante, la implementación es totalmente mía.

  switch(screenState) {

  case 0:
    drawMenu();
    break;

  case -1:
    drawLibre();
    break;

  case -2:
    drawMisc();
    break;

  case 1:
  case 2:
  case 3:
  case 4:
  case 5:
    drawNivel();
    break;
  }
}
