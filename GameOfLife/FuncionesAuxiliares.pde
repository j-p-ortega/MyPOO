

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
  
  //Mata a todas las celulas:
  if(key=='b'||key=='B'){
    
   for(int i=0; i<width/tamanoCelular; i++){ 
    for(int j=0; j<height/tamanoCelular;j++){
      malla[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,false);  
      mallaFalsa[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,false);
    }
   } 
   
    
  }
  
       if(key=='r'||key=='R'){
  
    for(int i=0; i<width/tamanoCelular; i++){
     for(int j=0; j<height/tamanoCelular;j++){
        malla[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,randomBool());
          }
       }
    
     } 
    
  
  //Cambia la velocidad:
  if(key=='+'){
   if(vel<61){
    vel=vel+1;
   }
  }
 if(key=='-'){
  if(vel>1){
    vel=vel-1;
   }
 }
 
//Patron de la vida estatica:
 if(key=='1'){
  
    for(int i=0; i<width/tamanoCelular; i++){
     for(int j=0; j<height/tamanoCelular;j++){
        malla[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,false);
          }
    }
 malla[1][1].est=true;
 malla[1][2].est=true;
 malla[2][1].est=true;
 malla[2][2].est=true;
 
 malla[13][14].est=true;
 malla[14][14].est=true;
 malla[14][15].est=true;
 malla[13][16].est=true;
 malla[12][17].est=true;
 malla[11][18].est=true;
 malla[10][18].est=true;
 malla[10][17].est=true;
 
 malla[35][3].est=true;
 malla[36][3].est=true;
 malla[36][4].est=true;
 malla[35][5].est=true;
 malla[35][6].est=true;
 malla[36][6].est=true;
 malla[36][8].est=true;
 malla[35][8].est=true;
 malla[35][9].est=true;
 malla[35][10].est=true;
 malla[34][11].est=true;
 malla[33][10].est=true;
 malla[32][10].est=true;
 malla[32][11].est=true;
 malla[32][8].est=true;
 malla[32][7].est=true;
 malla[33][8].est=true;
 malla[33][7].est=true;
 malla[30][12].est=true; 
 malla[29][12].est=true;
 malla[29][11].est=true; 
 malla[30][10].est=true;
 malla[30][9].est=true;
 malla[29][9].est=true;
 malla[30][7].est=true;
 malla[29][7].est=true;
 malla[30][6].est=true;
 malla[30][5].est=true;
 malla[31][4].est=true;
 malla[32][5].est=true;
 malla[33][5].est=true;
 malla[33][4].est=true;
}

//Patron del Pentadecathlon:
if(key=='2'){
  
    for(int i=0; i<width/tamanoCelular; i++){
     for(int j=0; j<height/tamanoCelular;j++){
        malla[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,false);
          }
    }
 malla[50][50].est=true;
 malla[51][50].est=true;
 malla[52][49].est=true;
 malla[52][51].est=true;
 malla[53][50].est=true;
 malla[54][50].est=true;
 malla[55][50].est=true;
 malla[56][50].est=true;
 malla[57][49].est=true;
 malla[57][51].est=true;
 malla[58][50].est=true;
 malla[59][50].est=true;
  
}

//Patron del Glider:
if(key=='3'){
  
    for(int i=0; i<width/tamanoCelular; i++){
     for(int j=0; j<height/tamanoCelular;j++){
        malla[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,false);
          }
    }
 malla[2][3].est=true;
 malla[3][4].est=true;
 malla[3][5].est=true;
 malla[2][5].est=true;
 malla[1][5].est=true;
  
}

//Patron del Gosper glider gun:
if(key=='4'){
  
    for(int i=0; i<width/tamanoCelular; i++){
     for(int j=0; j<height/tamanoCelular;j++){
        malla[i][j]= new celula(tamanoCelular*i,tamanoCelular*j,tamanoCelular,tamanoCelular,false);
          }
    }
 malla[10][10].est=true;
 malla[11][11].est=true;
 malla[10][11].est=true;
 malla[11][10].est=true;
 malla[20][10].est=true;
 malla[20][11].est=true;
 malla[20][12].est=true;
 malla[21][13].est=true;
 malla[22][14].est=true;
 malla[23][14].est=true;
 malla[25][13].est=true;
 malla[24][11].est=true;
 malla[26][12].est=true;
 malla[27][11].est=true;
 malla[26][11].est=true;
 malla[26][10].est=true;
 malla[25][9].est=true;
 malla[23][8].est=true;
 malla[22][8].est=true;
 malla[21][9].est=true;
 malla[30][10].est=true;
 malla[30][9].est=true;
 malla[30][8].est=true;
 malla[31][8].est=true;
 malla[31][9].est=true;
 malla[31][10].est=true;
 malla[32][11].est=true;
 malla[34][11].est=true;
 malla[34][12].est=true;
 malla[32][7].est=true;
 malla[34][7].est=true;
 malla[34][6].est=true;
 malla[44][8].est=true;
 malla[45][8].est=true;
 malla[44][9].est=true;
 malla[45][9].est=true;
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
