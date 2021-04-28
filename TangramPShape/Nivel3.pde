void drawNivel3() {

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
  
  

fill(4);
textSize(50);
text("Nivel 3", 15, 565); 
 
fill(170);
rect(520,520,50,50,7);

fill(200);
shape(home, 525, 525, 40,40);


  
}
