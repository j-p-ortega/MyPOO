

int tamanoCelular = 10; // Parametro para definir el tamaño de cada celula.
boolean pause = false; //Para la pausa.
int vel=3; //Para la velocidad.
celula[][] malla;      //Los objetos que usaremos, pertenecientes
celula[][] mallaFalsa; //clase creada por mi llamada 'celula'.

void setup() {
 
  //Setup basico:
  size(800, 600);
  background(0);
  
  //Creacion de las celulas que usaremos:
  malla= new celula[width/tamanoCelular][height/tamanoCelular];
  mallaFalsa= new celula[width/tamanoCelular][height/tamanoCelular];
  
  //Inicializacion de las celulas:
  for(int i=0; i<width/tamanoCelular; i++){
    for(int j=0; j<height/tamanoCelular;j++){
        malla[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,false);
    }
}

for(int i=1; i<width/tamanoCelular-1; i++){ 
    for(int j=1; j<height/tamanoCelular-1;j++){
        malla[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,randomBool());
    }
}
 for(int i=0; i<width/tamanoCelular; i++){ 
    for(int j=0; j<height/tamanoCelular;j++){
        mallaFalsa[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,false);
    }
}
 
}
void draw() {

  frameRate(vel);
  
 //Para dibujar las celulas reales y actualizar el valor de las falsas:
 for (int i=0;i<width/tamanoCelular;i++) {
   for (int j=0;j<height/tamanoCelular;j++) {
     mallaFalsa[i][j]= malla[i][j];
     malla[i][j].display();
   }
 }
 
if(pause==false){  
//Conteo de vecinos y calculo de nuevos valores para el proximo turno:
vecinos(malla,mallaFalsa);

//actualizacion de valores en la malla real:
      for(int i=0;i<width/tamanoCelular;i++){
       for(int j=0;j<height/tamanoCelular;j++){
       malla[i][j]=mallaFalsa[i][j]; 
    
       }
      }
 }
 
}
