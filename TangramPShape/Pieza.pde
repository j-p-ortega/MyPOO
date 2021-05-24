
class Pieza {
//Los atributos de un objeto de la clase Pieza son los siguientes:
//un valor entero que me indica el tipo de pieza que es 
//(cuadrado, triagulo grande, triangulo pequeño, etc), un par de coordenadas (x,y),
// un color y un valor booleano que me indica si se esta moviendo o no

  int tipo; //el tipo de la pieza. 1 para paraleogramo, 2 para cuadrado, 30 para
  //triangulo grande, 31 para triangulo mediado y 32 para triangulo pequeño
  float x,y; //las coordenadas
  color relleno; //el color
  boolean mov; //Moviendose o no
  PShape forma; //Para dbujar la forma   
  float x0=0;
  float y0=0;
  float xM=0;
  float yM=0; 
  
  Pieza(int tipoF, float xF, float yF, color rellenoF, boolean movF){
   tipo = tipoF;
   x = xF;
   y = yF;
   relleno = rellenoF;
   mov = movF; 
   
   stroke(4);
   fill(relleno);
   
   if(tipo==1){
    forma = createShape(QUAD,0,0,d,d,3*d,d,2*d,0);     
   }
   else if(tipo==2){
   forma = createShape(RECT,0,0,sqrt(2)*d,sqrt(2)*d);
   forma.rotate(PI/4);
  }
  else if(tipo==30){
   forma = createShape(TRIANGLE,0,0,-2*d,-2*d,-2*d,2*d);
  }
  else if(tipo==31){
   forma = createShape(TRIANGLE,0,0,-2*d,0,0,2*d);  
  }
  else if(tipo==32){
   forma = createShape(TRIANGLE,0,0,-d,-d,d,-d);;  
  }

  
  }
  

//Ahora veamos los métodos:

void display() {
  
shape(forma,x,y);
  
}


void rotar(float ang){
  
  forma.rotate(ang);
  
}

void mover(float xmov, float ymov){

  if(mov==false){
    
  x0=x;
  y0=y;
  xM=xmov;
  yM=ymov; 
    
  }
  
   if(mov==true){
   
   x=xmov-(xM-x0);
   y=ymov-(yM-y0);
    
  }
  
}

void setMovimiento(boolean bol){
 
  mov=bol;
  
}

void reflect(){
  
 forma.scale(-1,1); 
  
}


  }
