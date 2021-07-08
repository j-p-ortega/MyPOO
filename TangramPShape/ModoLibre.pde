void drawLibre() {
  
for (int i=0; i<Tangram.length; i++) {
       

          Tangram[i].display();
 
      }

movement(mouseQ);

fill(170);
rect(520,520,50,50,7);

fill(1,0,1);
shape(home, 525, 525, 40,40);


  
}
