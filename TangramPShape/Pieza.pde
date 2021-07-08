
abstract class Pieza {
  //Los atributos de un objeto de la clase Pieza son los siguientes:
  //un valor entero que me indica el tipo de pieza que es
  //(cuadrado, triagulo grande, triangulo pequeño, etc), un par de coordenadas (x,y),
  // un color y un valor booleano que me indica si se esta moviendo o no, y un angulo
  //que indica su rotacion.

  float x, y; //las coordenadas
  color relleno; //el color
  boolean mov; //Moviendose o no
  float ang; //angulo

  float x0=0;
  float y0=0;
  float xM=0;
  float yM=0;
  int mirror=1;


  Pieza( float xF, float yF, color rellenoF, boolean movF, float angF) {
    x = xF;
    y = yF;
    relleno = rellenoF;
    mov = movF;
    ang = angF;

    stroke(4);
    fill(relleno);
  }


  //Ahora veamos los métodos:




  void rotar(float angFal) {

    ang=ang+angFal;
  }

  void mover(float xmov, float ymov) {

    if (mov==false) {

      x0=x;
      y0=y;
      xM=xmov;
      yM=ymov;
    }

    if (mov==true) {

      x=xmov-(xM-x0);
      y=ymov-(yM-y0);
    }
  }

  abstract void aspect();

  void reflect() {

    mirror=-mirror;
  }

  void display() {
    push();
    fill(relleno);
    translate(x, y);
    rotate(ang);
    scale(mirror, 1);
    aspect();
    pop();
  }

  void setMovimiento(boolean bol) {

    mov=bol;
  }
}
