
class Triang extends Pieza {

    PShape forma;
  
  Triang (int tamano, float xF, float yF, color rellenoF, boolean movF, float angF) {
    
    super(xF, yF, rellenoF, movF, angF);


   //Para dbujar la forma

    if (tamano==1) {
      forma = createShape(TRIANGLE, 0, 0, -2*d, -2*d, -2*d, 2*d);
    } else if (tamano==2) {
      forma = createShape(TRIANGLE, 0, 0, -2*d, 0, 0, 2*d);
    } else if (tamano==3) {
      forma = createShape(TRIANGLE, 0, 0, -d, -d, d, -d);
      ;
    }
  }


  void display() {
    push();
    translate(x, y);
    rotate(ang);
    shape(forma, 0, 0);
    pop();
  }
  
  
}
