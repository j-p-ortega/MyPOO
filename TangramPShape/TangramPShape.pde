//Los objetos que usaremos:
Pieza cuadrado;
Pieza granTriang1;
Pieza granTriang2;
Pieza medioTriang;
Pieza miniTriang1;
Pieza miniTriang2;
Pieza cuadrilat;
Pieza ninguna; //Place holder vacio
PShape home;
PShape lv1;
PImage lvi2;
PImage lvi3;
PImage lvi4;
PImage lvi5;





//Definicion de parametros:
float d = 60; //dimension de las piezas. El codigo mantiene la proporcionalidad.
color azul = color(100, 100, 255);
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

  //Inicializadores de las piezas:

  cuadrilat   = new Pieza(1, 0, 0, naranja, false,0);
  cuadrado    = new Pieza(2, 3*d, d, azul, false,0);
  granTriang1 = new Pieza(30, 2*d, 2*d, rojo, false,0);
  granTriang1.rotar(-PI/2);
  granTriang2 = new Pieza(30, 2*d, 2*d, amarillo, false,0);
  miniTriang1 = new Pieza(32, 3*d, 3*d, verde, false,0);
  miniTriang1.rotar(PI/2);
  miniTriang2 = new Pieza(32, 2*d, 2*d, morado, false,0);
  medioTriang = new Pieza(31, 4*d, 0, blanco, false,0);
  ninguna     = new Pieza(1, 0, 0, naranja, false,0);




  home = loadShape("Home.svg");
  home.disableStyle();

  lv1 = loadShape("lv1.svg");
  lv1.disableStyle();
  lv1.scale(0.593);
  lvi2 = loadImage("lvi2.png");
  lvi2.resize(527, 0);
  lvi2.filter(THRESHOLD, 2);
  lvi3 = loadImage("lvi3.png");
  lvi3.resize(750, 285);
  lvi3.filter(THRESHOLD, 2);
  lvi4 = loadImage("lvi4.png");
  lvi4.resize(352, 0);
  lvi4.filter(THRESHOLD, 2);
  lvi5 = loadImage("lvi5.png");
  lvi5.resize(374, 0);
  lvi5.filter(THRESHOLD, 2);
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
    drawNivel1();
    break;

  case 2:
    drawNivel2();
    break;


  case 3:
    drawNivel3();
    break;


  case 4:
    drawNivel4();
    break;


  case 5:
    drawNivel5();
    break;
  }
}
