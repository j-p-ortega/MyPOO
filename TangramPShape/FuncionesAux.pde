void keyPressed(){
loadPixels();

//Para rotar una pieza a la izquiera:
   if((get(mouseX,mouseY)==azul)&&(key=='r' || key == 'R')){  
      cuadrado.rotate(-PI/4);
      }
  if((get(mouseX,mouseY)==rojo)&&(key=='r' || key == 'R')){  
      granTriang1.rotate(-PI/4);
      }
  if((get(mouseX,mouseY)==amarillo)&&(key=='r' || key == 'R')){  
      granTriang2.rotate(-PI/4);
      }  
  if((get(mouseX,mouseY)==verde)&&(key=='r' || key == 'R')){  
      miniTriang1.rotate(-PI/4);
      }  
  if((get(mouseX,mouseY)==morado)&&(key=='r' || key == 'R')){  
      miniTriang2.rotate(-PI/4);
      }  
  if((get(mouseX,mouseY)==blanco)&&(key=='r' || key == 'R')){  
      medioTriang.rotate(-PI/4);
      } 
 if((get(mouseX,mouseY)==naranja)&&(key=='r' || key == 'R')){  
      cuadrilat.rotate(-PI/4);
      }
      
      
//Para rotar cualquier pieza a la derecha:      
 if((get(mouseX,mouseY)==azul)&&(key=='e' || key == 'E')){  
      cuadrado.rotate(PI/4);
      }
  if((get(mouseX,mouseY)==rojo)&&(key=='e' || key == 'E')){  
      granTriang1.rotate(PI/4);
      }
  if((get(mouseX,mouseY)==amarillo)&&(key=='e' || key == 'E')){  
      granTriang2.rotate(PI/4);
      }  
  if((get(mouseX,mouseY)==verde)&&(key=='e' || key == 'E')){  
      miniTriang1.rotate(PI/4);
      }  
  if((get(mouseX,mouseY)==morado)&&(key=='e' || key == 'E')){  
      miniTriang2.rotate(PI/4);
      }  
  if((get(mouseX,mouseY)==blanco)&&(key=='e' || key == 'E')){  
      medioTriang.rotate(PI/4);
      } 
 if((get(mouseX,mouseY)==naranja)&&(key=='e' || key == 'E')){  
      cuadrilat.rotate(PI/4);
      }
//Para girar el paralelogramo:
 if((get(mouseX,mouseY)==naranja)&&(key=='t' || key == 'T')){
     fill(naranja);
     if(i%2==0){
     cuadrilat = createShape(QUAD,d,0,3*d,0,2*d,d,0,d);
     }
     if(i%2==1){
     cuadrilat = createShape(QUAD,0,0,d,d,3*d,d,2*d,0);
     }
     i++;
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
  
cuadradoX=3*d;cuadradoX0=3*d;
cuadradoY=d;cuadradoY0=d;
granTriang1X=2*d;granTriang1X0=2*d;
granTriang1Y=2*d;granTriang1Y0=2*d;
granTriang2X=2*d;granTriang2X0=2*d;
granTriang2Y=2*d;granTriang2Y0=2*d;
miniTriang1X=3*d;miniTriang1X0=3*d;
miniTriang1Y=3*d;miniTriang1Y0=3*d;
miniTriang2X=2*d;miniTriang2X0=2*d;
miniTriang2Y=2*d;miniTriang2Y0=2*d;
medioTriangX=4*d;medioTriangX0=4*d;
medioTriangY=0;medioTriangY0=0;
cuadrilatX=0;cuadrilatX0=0;
cuadrilatY=0;cuadrilatY0=0;  
i=0;

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
  
  
  
}
 
 
