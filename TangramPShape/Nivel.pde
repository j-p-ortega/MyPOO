void drawNivel() {
  
stroke(10);
  
float pos[] = posSilueta[screenState-1].array(); 
 
fill(0);
image(Niveles[screenState-1],pos[0],pos[1]);
  
for (int i=0; i<Tangram.length; i++) {
       

          Tangram[i].display();
 
      } 



movement(mouseQ);
  
String N1 = "Nivel ";

String N2 = str(screenState);

String N = N1+N2;

fill(4);
textSize(50);
text(N, 15, 565); 
 
fill(170);
rect(520,520,50,50,7);

fill(1,0,1);
shape(home, 525, 525, 40,40);

for(int k=0;k<600;k++){
  for(int j=0;j<600;j++){
    
    if(get(k,j)==color(0,0,0)){
      
      ruido=ruido+1;
      
    }
    
  }
    
}

    if (ruido<ruidoThreshold) {
      println("¡Nivel ", screenState, " superado!");
      screenState=(screenState+1)%6;
    }
      ruido=0;

 
}
