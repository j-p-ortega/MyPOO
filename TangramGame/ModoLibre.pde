void drawLibre() {
  
noStroke();
  
for (int i=0; i<Tangram.length-1; i++) {
       

          Tangram[i].display();
 
      }

MovGlobal(mouseQ);

fill(170);
rect(520,520,50,50,7);

fill(1,0,1);
shape(menu, 525, 525, 40,40);


  
}
