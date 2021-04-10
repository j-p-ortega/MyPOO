

class celula {
  //Un objeto de la clase 'celula' se caracteriza por su ubicacion en la malla,
  //su altura, su ancho y su estado (viva o muerta).
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
