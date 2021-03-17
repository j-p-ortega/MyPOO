
int tamanoCelular = 10;
celula[][] malla;
celula[][] mallaFalsa;

void setup() {
  size(800, 600);
  frameRate(2);
  background(0);
  malla= new celula[width/tamanoCelular][height/tamanoCelular];
  mallaFalsa= new celula[width/tamanoCelular][height/tamanoCelular];
  for(int i=0; i<width/tamanoCelular; i++){ //Inicializacion de las celulas
    for(int j=0; j<height/tamanoCelular;j++){
        malla[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,false);
    }
}

for(int i=1; i<width/tamanoCelular-1; i++){ //Inicializacion de las celulas
    for(int j=1; j<height/tamanoCelular-1;j++){
        malla[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,randomBool());
    }
}
 for(int i=0; i<width/tamanoCelular; i++){ //Inicializacion de las celulas
    for(int j=0; j<height/tamanoCelular;j++){
        mallaFalsa[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,false);
    }
}

}
void draw() {
 
 for (int i=0;i<width/tamanoCelular;i++) {
   for (int j=0;j<height/tamanoCelular;j++) {
     mallaFalsa[i][j]= malla[i][j];
     malla[i][j].display();
   }
 } 
 
 for (int i=1;i<width/tamanoCelular-1;i++) {
   for (int j=1;j<height/tamanoCelular-1;j++) {
    
    int vecinos=0;
    
    if (malla[i-1][j-1].est==true){
     vecinos++;
    }  
     if (malla[i-1][j].est==true){
     vecinos++;
    }
     if (malla[i-1][j+1].est==true){
     vecinos++;
    } 
     if (malla[i][j-1].est==true){
     vecinos++;
    } 
     if (malla[i][j+1].est==true){
     vecinos++;
    } 
     if (malla[i+1][j-1].est==true){
     vecinos++;
    } 
     if (malla[i+1][j].est==true){
     vecinos++;
    } 
     if (malla[i+1][j+1].est==true){
     vecinos++;
    } 
  
    if((vecinos!=2)&&(vecinos!=3)&&(malla[i][j].est==true)){
       mallaFalsa[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,false);}
      if((vecinos==3)&&(malla[i][j].est==false)){
      mallaFalsa[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,true);}
    vecinos=0;
 
       
       }
    }
      for(int i=0;i<width/tamanoCelular;i++){
       for(int j=0;j<height/tamanoCelular;j++){
       malla[i][j]=mallaFalsa[i][j]; 
    
       }
      }

}

class celula {
  //Un objeto de la clase 'celula' se caracteriza por su ubicacion en la malla,
  //su altura y su ancho.
  float x,y; //ubicacion x,y
  float w,h; // ancho (w) y altura (h)
  boolean est; //para ver el estado de la ceulua (viva o muerta)
  
  //constructor de celulas
  celula(float tempX, float tempY, float tempW, float tempH, boolean tempEst){
  x = tempX;
  y = tempY;
  w = tempW;
  h = tempH;
  est = tempEst;
    
  }
  void display() {
   stroke(150,150,150);
   if (est==true){
   fill(70,250,70);}
   else{
   fill(0,0,0);}
   rect(x,y,w,h);
    
  }
  
  
}

boolean randomBool() {
  return random(1) > .90;
}
