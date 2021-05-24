void drawNivel1() {
  
stroke(0,0,0);  
fill(0,0,0);   

shape(lv1,120,40);
  

granTriang1.display();
granTriang2.display();
miniTriang1.display();  
miniTriang2.display();  
medioTriang.display();
cuadrilat.display();
cuadrado.display();  



granTriang1.mover(mouseX,mouseY);
granTriang2.mover(mouseX,mouseY);
miniTriang1.mover(mouseX,mouseY);  
miniTriang2.mover(mouseX,mouseY);  
medioTriang.mover(mouseX,mouseY);
cuadrilat.mover(mouseX,mouseY);
cuadrado.mover(mouseX,mouseY); 
  
stroke(0);

fill(4);
textSize(50);
text("Nivel 1", 15, 565); 
 
fill(170);
rect(520,520,50,50,7);

fill(1,0,1);
shape(home, 525, 525, 40,40);

int ruido=0;

for(int k=0;k<600;k++){
  for(int j=0;j<600;j++){
    
    if(get(k,j)==color(0,0,0)){
      
      ruido=ruido+1;
      
    }
    
  }
   
}

if(ruido<20&&keyPressed&&key==' '){
  screenState=2;
  println("¡Nivel 1 superado!");
}
else if(ruido>=20&&keyPressed&&key==' '){
  println("Intentalo de nuevo");
}

ruido=0;
 
}
