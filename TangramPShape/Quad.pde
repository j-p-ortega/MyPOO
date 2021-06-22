class Quad extends Pieza {

  PShape forma;

  Quad (int tipo, float xF, float yF, color rellenoF, boolean movF, float angF) {



    super(xF, yF, rellenoF, movF, angF);


    //Para dbujar la forma

    if (tipo==1) {
      forma = createShape(QUAD, 0, 0, d, d, 3*d, d, 2*d, 0);
    } else if (tipo==2) {
      forma = createShape(RECT, 0, 0, sqrt(2)*d, sqrt(2)*d);
      forma.rotate(PI/4);
    }
  }

  void display() {
    push();
    translate(x, y);
    rotate(ang);
    shape(forma, 0, 0);
    pop();
  }


  void reflect() {

    forma.scale(-1, 1);
  }
}
