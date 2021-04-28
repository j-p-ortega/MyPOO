void keyPressed(){
loadPixels();

//Para rotar una pieza a la izquiera:
   if((get(mouseX,mouseY)==azul)&&(key=='r' || key == 'R')){  
      cuadrado.rotar(-PI/4);
      }
  if((get(mouseX,mouseY)==rojo)&&(key=='r' || key == 'R')){  
      granTriang1.rotar(-PI/4);
      }
  if((get(mouseX,mouseY)==amarillo)&&(key=='r' || key == 'R')){  
      granTriang2.rotar(-PI/4);
      }  
  if((get(mouseX,mouseY)==verde)&&(key=='r' || key == 'R')){  
      miniTriang1.rotar(-PI/4);
      }  
  if((get(mouseX,mouseY)==morado)&&(key=='r' || key == 'R')){  
      miniTriang2.rotar(-PI/4);
      }  
  if((get(mouseX,mouseY)==blanco)&&(key=='r' || key == 'R')){  
      medioTriang.rotar(-PI/4);
      } 
 if((get(mouseX,mouseY)==naranja)&&(key=='r' || key == 'R')){  
      cuadrilat.rotar(-PI/4);
      }
      
      
//Para rotar cualquier pieza a la derecha:      
 if((get(mouseX,mouseY)==azul)&&(key=='e' || key == 'E')){  
      cuadrado.rotar(PI/4);
      }
  if((get(mouseX,mouseY)==rojo)&&(key=='e' || key == 'E')){  
      granTriang1.rotar(PI/4);
      }
  if((get(mouseX,mouseY)==amarillo)&&(key=='e' || key == 'E')){  
      granTriang2.rotar(PI/4);
      }  
  if((get(mouseX,mouseY)==verde)&&(key=='e' || key == 'E')){  
      miniTriang1.rotar(PI/4);
      }  
  if((get(mouseX,mouseY)==morado)&&(key=='e' || key == 'E')){  
      miniTriang2.rotar(PI/4);
      }  
  if((get(mouseX,mouseY)==blanco)&&(key=='e' || key == 'E')){  
      medioTriang.rotar(PI/4);
      } 
 if((get(mouseX,mouseY)==naranja)&&(key=='e' || key == 'E')){  
      cuadrilat.rotar(PI/4);
      }
//Para girar el paralelogramo:
 if((get(mouseX,mouseY)==naranja)&&(key=='t' || key == 'T')){

   cuadrilat.reflect();
   
 }


}
 
void mousePressed(){
  

  
 if(get(mouseX,mouseY)==azul&&cuadrado.mov==false){
     cuadrado.setMovimiento(true);}
 else if(get(mouseX,mouseY)==rojo&&granTriang1.mov==false){
      granTriang1.setMovimiento(true);}
 else if(get(mouseX,mouseY)==amarillo&&granTriang2.mov==false){
      granTriang2.setMovimiento(true);}
 else if(get(mouseX,mouseY)==verde&&miniTriang1.mov==false){
      miniTriang1.setMovimiento(true);}  
 else if(get(mouseX,mouseY)==morado&&miniTriang2.mov==false){
       miniTriang2.setMovimiento(true);}  
 else if(get(mouseX,mouseY)==blanco&&medioTriang.mov==false){
      medioTriang.setMovimiento(true);}
 else if(get(mouseX,mouseY)==naranja&&cuadrilat.mov==false){
     cuadrilat.setMovimiento(true);}        

  
}

void mouseReleased(){
     
    cuadrado.setMovimiento(false);
   
    granTriang1.setMovimiento(false);

    granTriang2.setMovimiento(false);

    miniTriang1.setMovimiento(false);

    miniTriang2.setMovimiento(false);

    medioTriang.setMovimiento(false);

    cuadrilat.setMovimiento(false);
     
  
}

void mouseClicked(){
  
  int screenStateF = screenState;
  
if(get(mouseX,mouseY)==color(170)||get(mouseX,mouseY)==color(0)){
  
screenState=0;  


}
  
if(get(mouseX,mouseY)==color(171)||get(mouseX,mouseY)==color(1)){
  
screenState=-1;

  
}

if(get(mouseX,mouseY)==color(173)||get(mouseX,mouseY)==color(3)){
  
screenState=-2;  


  
}


if(get(mouseX,mouseY)==color(172)||get(mouseX,mouseY)==color(2)){
  
screenState=1;  

  
}

if(get(mouseX,mouseY)==color(169)||get(mouseX,mouseY)==color(5)){
  
screenState=2;  

  
}

if(get(mouseX,mouseY)==color(168)||get(mouseX,mouseY)==color(6)){
  
screenState=3;  

  
}

if(get(mouseX,mouseY)==color(167)||get(mouseX,mouseY)==color(7)){
  
screenState=4;  

  
}

if(get(mouseX,mouseY)==color(166)||get(mouseX,mouseY)==color(8)){
  
screenState=5;  

  
}


if(screenState!=screenStateF){
  
cuadrilat   = new Pieza(1,0,0,naranja,false);
cuadrado    = new Pieza(2,3*d,d,azul,false);
granTriang1 = new Pieza(30,2*d,2*d,rojo,false);
granTriang1.rotar(-PI/2);
granTriang2 = new Pieza(30,2*d,2*d,amarillo,false);
miniTriang1 = new Pieza(32,3*d,3*d,verde,false);
miniTriang1.rotar(PI/2);
miniTriang2 = new Pieza(32,2*d,2*d,morado,false);
medioTriang = new Pieza(31,4*d,0,blanco,false);
  
}
 
 
}
