//Definicion de parametros alterables a gusto:

PShape menu;           //Imagen para el boton muenu
int ruido=0;           //Variable para contar los pixeles negros en los niveles
int ruidoThreshold=15; //Threshold para la variable ruido
float precision=2;   //Parametro para la presicion del movimiento cuando jugamos
                       //solo con el teclado.
Pieza[] Tangram;
PImage[] Niveles = new PImage[5];


float d = 60;                       //dimension de las piezas. El tangram mantiene la proporcionalidad pero no los niveles. Pueden crearse niveles con nueva proporcion
color azul = color(100,100,255);    //colores de las piezas del Tangram
color rojo = color(255, 100, 100);
color amarillo = color(255, 255, 100);
color verde = color(100, 255, 100);
color blanco = color(255);
color morado = color(250, 100, 255);
color naranja = color(255, 180, 100);
int screenState = 0;                //Para saber qué pantalla deberíamos estar viendo
boolean mouseQ = true;              //Para escoger si estamos jugando solo con el teclado
                                    // o con teclado + raton

float horMove; //Para guardar el movimiento horizontal y vertical para
float verMove; //cuando juguemos sin raton.
float vel=1;   //Para ajustar la velocidad cuando juguemos sin raton.


void setup() {


  size(600, 600);
  stroke(4);

  Tangram = new Pieza[8];

  //Inicializadores de las piezas:

  Tangram[0] = new Quad(0, 0, naranja, 0, d, d, 3*d, d, 2*d, 0);                         //paralelogramo =0
  Tangram[1] = new Quad(3*d, d, azul, PI/4,0,sqrt(2)*d,sqrt(2)*d,sqrt(2)*d,sqrt(2)*d,0); //cuadrado =1
  Tangram[2] = new Triang(2*d, 2*d, rojo, 0,-2*d, -2*d, -2*d, 2*d);                      //granTriang1=2
  Tangram[2].rotar(-PI/2);
  Tangram[3] = new Triang(2*d, 2*d, amarillo, 0,-2*d, -2*d, -2*d, 2*d);                  //granTriang2=3
  Tangram[4] = new Triang(3*d, 3*d, verde, 0,-d, -d, d, -d);                             //miniTriang1=4
  Tangram[4].rotar(PI/2);
  Tangram[5] = new Triang(2*d, 2*d, morado, 0,-d, -d, d, -d);                            //miniTriang2=5
  Tangram[6] = new Triang(4*d, 0, blanco, 0,-2*d, 0, 0, 2*d);                            //medioTriang=6
  Tangram[7] = null;                                                                     //pieza select=ninguna por el momento




  menu = loadShape("Home.svg");
  menu.disableStyle();
  
  Niveles[0] = loadImage("nivel8336.png");
  Niveles[0].filter(THRESHOLD, 2);
  Niveles[1] = loadImage("nivel8937.png");
  Niveles[1].filter(THRESHOLD, 2);
  Niveles[2] = loadImage("nivel6162.png");
  Niveles[2].filter(THRESHOLD, 2);
  Niveles[3] = loadImage("nivel12207.png");
  Niveles[3].filter(THRESHOLD, 2);
  Niveles[4] = loadImage("nivel10610.png");
  Niveles[4].filter(THRESHOLD, 2);
  

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
