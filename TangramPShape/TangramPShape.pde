

//Definicion de parametros:
float d = 60; //dimension de las piezas. El codigo mantiene la proporcionalidad.
color azul = color(100,100,255);
color rojo = color(255,100,100);
color amarillo = color(255,255,100);
color verde = color(100,255,100);
color blanco = color(255);
color morado = color(200,50,255);
color naranja = color(255,180,100);
int screenState = 0; //Para saber qué pantalla deberíamos estar viendo 



void setup(){
  

size(600,600);
stroke(4);

//Inicializadores de las piezas:

//Empecemos con el cuadrado:
fill(azul);
cuadrado = createShape(RECT,0,0,sqrt(2)*d,sqrt(2)*d);
cuadrado.rotate(PI/4);
//Primer triangulo grande:
fill(rojo);
granTriang1 = createShape(TRIANGLE,0,0,-2*d,-2*d,-2*d,2*d);

//Segundo triangulo grande:
fill(amarillo);
granTriang2 = createShape(TRIANGLE,0,0,-2*d,2*d,2*d,2*d);

//Primer triangulo pequeño:
fill(verde);
miniTriang1 = createShape(TRIANGLE,0,0,d,d,d,-d);

//Segundo triangulo pequeño:
fill(morado);
miniTriang2 = createShape(TRIANGLE,0,0,-d,-d,d,-d);

//Triangulo mediano:
fill(blanco);
medioTriang = createShape(TRIANGLE,0,0,-2*d,0,0,2*d);

//Y ahora el cuadrilatero:
fill(naranja);
cuadrilat = createShape(QUAD,0,0,d,d,3*d,d,2*d,0);


home = loadShape("Home.svg");

lv1 = loadShape("lv1.svg");
lv1.disableStyle();        
lv1.scale(0.593);


}
 
void draw(){
  
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
 
 
 
 
