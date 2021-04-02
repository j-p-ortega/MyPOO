//Los objetos que usaremos:
PShape cuadrado;
PShape granTriang1;
PShape granTriang2;
PShape medioTriang;
PShape miniTriang1;
PShape miniTriang2;
PShape cuadrilat;

//Definicion de parametros:
float d = 60; //dimension de las piezas. El codigo mantiene la proporcionalidad.
float mX, mY = 0; //Para que las figuras se muevan desde el punto en que las tocamos.
color azul = color(100,100,255);
color rojo = color(255,100,100);
color amarillo = color(255,255,100);
color verde = color(100,255,100);
color blanco = color(255);
color morado = color(200,50,255);
color naranja = color(255,180,100);

//Parametros iniciales para las figuras:
float cuadradoX=3*d,cuadradoX0=3*d;
float cuadradoY=d,cuadradoY0=d;
float granTriang1X=2*d,granTriang1X0=2*d;
float granTriang1Y=2*d,granTriang1Y0=2*d;
float granTriang2X=2*d,granTriang2X0=2*d;
float granTriang2Y=2*d,granTriang2Y0=2*d;
float miniTriang1X=3*d,miniTriang1X0=3*d;
float miniTriang1Y=3*d,miniTriang1Y0=3*d;
float miniTriang2X=2*d,miniTriang2X0=2*d;
float miniTriang2Y=2*d,miniTriang2Y0=2*d;
float medioTriangX=4*d,medioTriangX0=4*d;
float medioTriangY=0,medioTriangY0=0;
float cuadrilatX=0,cuadrilatX0=0;
float cuadrilatY=0,cuadrilatY0=0;


//Variables booleanas para mover las piezas:
boolean granTriang1b=false;

boolean granTriang2b=false;

boolean miniTriang1b=false;

boolean miniTriang2b=false;

boolean medioTriangb=false;

boolean cuadrilatb=false;

boolean cuadradob=false;


void setup(){
  

size(800,800);
stroke(0);

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





}
 
void draw(){
  
background(140); 


shape(granTriang1,granTriang1X,granTriang1Y);
shape(granTriang2,granTriang2X,granTriang2Y);
shape(miniTriang1,miniTriang1X,miniTriang1Y);  
shape(miniTriang2,miniTriang2X,miniTriang2Y);  
shape(medioTriang,medioTriangX,medioTriangY);
shape(cuadrilat,cuadrilatX,cuadrilatY);
shape(cuadrado,cuadradoX,cuadradoY);  


if(cuadradob==true){
 cuadradoX=mouseX-(mX-cuadradoX0); 
 cuadradoY=mouseY-(mY-cuadradoY0);
}

if(granTriang1b==true){
 granTriang1X=mouseX-(mX-granTriang1X0); 
 granTriang1Y=mouseY-(mY-granTriang1Y0);
}

if(granTriang2b==true){
 granTriang2X=mouseX-(mX-granTriang2X0); 
 granTriang2Y=mouseY-(mY-granTriang2Y0);
}

if(miniTriang1b==true){
 miniTriang1X=mouseX-(mX-miniTriang1X0); 
 miniTriang1Y=mouseY-(mY-miniTriang1Y0);
}

if(miniTriang2b==true){
 miniTriang2X=mouseX-(mX-miniTriang2X0); 
 miniTriang2Y=mouseY-(mY-miniTriang2Y0);
}

if(medioTriangb==true){
 medioTriangX=mouseX-(mX-medioTriangX0); 
 medioTriangY=mouseY-(mY-medioTriangY0);
}

if(cuadrilatb==true){
 cuadrilatX=mouseX-(mX-cuadrilatX0); 
 cuadrilatY=mouseY-(mY-cuadrilatY0);
}

if(mousePressed==false){
  mX = mouseX;
  mY = mouseY;
  cuadradoX0 = cuadradoX;
  cuadradoY0 = cuadradoY;
  granTriang1X0=granTriang1X;
  granTriang1Y0=granTriang1Y;
  granTriang2X0=granTriang2X;
  granTriang2Y0=granTriang2Y;
  miniTriang1X0=miniTriang1X;
  miniTriang1Y0=miniTriang1Y;
  miniTriang2X0=miniTriang2X;
  miniTriang2Y0=miniTriang2Y;  
  medioTriangX0=medioTriangX;
  medioTriangY0=medioTriangY; 
  cuadrilatX0=cuadrilatX;
  cuadrilatY0=cuadrilatY;
}
 
  
  
}
 
void keyPressed(){
loadPixels();

//Para mover una pieza a la izquiera:
   if((get(mouseX,mouseY)==azul)&&(key=='e' || key == 'E')){  
      cuadrado.rotate(-PI/4);
      }
  if((get(mouseX,mouseY)==rojo)&&(key=='e' || key == 'E')){  
      granTriang1.rotate(-PI/4);
      }
  if((get(mouseX,mouseY)==amarillo)&&(key=='e' || key == 'E')){  
      granTriang2.rotate(-PI/4);
      }  
  if((get(mouseX,mouseY)==verde)&&(key=='e' || key == 'E')){  
      miniTriang1.rotate(-PI/4);
      }  
  if((get(mouseX,mouseY)==morado)&&(key=='e' || key == 'E')){  
      miniTriang2.rotate(-PI/4);
      }  
  if((get(mouseX,mouseY)==blanco)&&(key=='e' || key == 'E')){  
      medioTriang.rotate(-PI/4);
      } 
 if((get(mouseX,mouseY)==naranja)&&(key=='e' || key == 'E')){  
      cuadrilat.rotate(-PI/4);
      }
      
      
//Para mover cualquier pieza a la derecha:      
 if((get(mouseX,mouseY)==azul)&&(key=='r' || key == 'R')){  
      cuadrado.rotate(PI/4);
      }
  if((get(mouseX,mouseY)==rojo)&&(key=='r' || key == 'R')){  
      granTriang1.rotate(PI/4);
      }
  if((get(mouseX,mouseY)==amarillo)&&(key=='r' || key == 'R')){  
      granTriang2.rotate(PI/4);
      }  
  if((get(mouseX,mouseY)==verde)&&(key=='r' || key == 'R')){  
      miniTriang1.rotate(PI/4);
      }  
  if((get(mouseX,mouseY)==morado)&&(key=='r' || key == 'R')){  
      miniTriang2.rotate(PI/4);
      }  
  if((get(mouseX,mouseY)==blanco)&&(key=='r' || key == 'R')){  
      medioTriang.rotate(PI/4);
      } 
 if((get(mouseX,mouseY)==naranja)&&(key=='r' || key == 'R')){  
      cuadrilat.rotate(PI/4);
      }
}
 
void mousePressed(){
  
 if(get(mouseX,mouseY)==azul&&cuadradob==false){
     cuadradob=true;}
 else if(get(mouseX,mouseY)==rojo&&granTriang1b==false){
     granTriang1b=true;}
 else if(get(mouseX,mouseY)==amarillo&&granTriang2b==false){
     granTriang2b=true;}
 else if(get(mouseX,mouseY)==verde&&miniTriang1b==false){
     miniTriang1b=true;}  
 else if(get(mouseX,mouseY)==morado&&miniTriang2b==false){
     miniTriang2b=true;}  
 else if(get(mouseX,mouseY)==blanco&&medioTriangb==false){
     medioTriangb=true;}
 else if(get(mouseX,mouseY)==naranja&&cuadrilatb==false){
     cuadrilatb=true;}        

  
}

void mouseReleased(){
     
    cuadradob=false;
   
    granTriang1b=false;

    granTriang2b=false;

    miniTriang1b=false;

    miniTriang2b=false;

    medioTriangb=false;

    cuadrilatb=false;
    
  
  
  
}
 
 
 
 
 
