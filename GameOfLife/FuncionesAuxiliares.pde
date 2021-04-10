

//Funcion booleana para determinar el arreglo inicial, inspirado en  
//https://forum.processing.org/two/discussion/1433/random-boolean-howto :
boolean randomBool() {
  return random(1) > .9;
}


//Funcion para contar la cantidad de vecinos de cada celula y calcular
//con base en ellos su estado en el proximo turno:
void vecinos(celula[][] realCel, celula[][] falseCel){
 
   for (int i=1;i<width/tamanoCelular-1;i++) {
   for (int j=1;j<height/tamanoCelular-1;j++) {
    
    int vecinos=0;
    
    if (realCel[i-1][j-1].est==true){
     vecinos++;
    }  
     if (realCel[i-1][j].est==true){
     vecinos++;
    }
     if (realCel[i-1][j+1].est==true){
     vecinos++;
    } 
     if (realCel[i][j-1].est==true){
     vecinos++;
    } 
     if (realCel[i][j+1].est==true){
     vecinos++;
    } 
     if (realCel[i+1][j-1].est==true){
     vecinos++;
    } 
     if (realCel[i+1][j].est==true){
     vecinos++;
    } 
     if (realCel[i+1][j+1].est==true){
     vecinos++;
    } 
  
    if((vecinos!=2)&&(vecinos!=3)&&(realCel[i][j].est==true)){
       falseCel[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,false);}
      if((vecinos==3)&&(realCel[i][j].est==false)){
      falseCel[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,true);}
    vecinos=0;
 
       
       }
    }
  
  
}

//Funcion para reaacionar cuando el usuario interactue utilizando las teclas:
void keyPressed(){

  //Activa y desactiva la pausa:
  if(key==' '){
    
   pause=!pause;
   
  }
  
  if(key=='b'||key=='B'){
    
   for(int i=0; i<width/tamanoCelular; i++){ 
    for(int j=0; j<height/tamanoCelular;j++){
      malla[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,false);  
      mallaFalsa[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,false);
    }
   } 
    
    
    
  }
  
  
}


//Para cambiar el estado de una celula al hacer click sobre ella:
void mousePressed(){
 if(get(mouseX,mouseY)==color(0)){
   
  malla[floor(mouseX/tamanoCelular)][floor(mouseY/tamanoCelular)] = 
  new celula(floor(mouseX/tamanoCelular)*tamanoCelular,floor(mouseY/tamanoCelular)*tamanoCelular,tamanoCelular,tamanoCelular,true);
   
   
 }
  
 if(get(mouseX,mouseY)==color(70,250,70)){
   
  malla[floor(mouseX/tamanoCelular)][floor(mouseY/tamanoCelular)] = 
  new celula(floor(mouseX/tamanoCelular)*tamanoCelular,floor(mouseY/tamanoCelular)*tamanoCelular,tamanoCelular,tamanoCelular,false);
   
   
 }
  
}

void mouseDragged(){
 if(get(mouseX,mouseY)==color(0)){
   
  malla[floor(mouseX/tamanoCelular)][floor(mouseY/tamanoCelular)] = 
  new celula(floor(mouseX/tamanoCelular)*tamanoCelular,floor(mouseY/tamanoCelular)*tamanoCelular,tamanoCelular,tamanoCelular,true);
   
   
 }
  
 if(get(mouseX,mouseY)==color(70,250,70)){
   
  malla[floor(mouseX/tamanoCelular)][floor(mouseY/tamanoCelular)] = 
  new celula(floor(mouseX/tamanoCelular)*tamanoCelular,floor(mouseY/tamanoCelular)*tamanoCelular,tamanoCelular,tamanoCelular,false);
   
   
 }
  
}
