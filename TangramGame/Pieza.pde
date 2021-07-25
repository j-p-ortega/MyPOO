
abstract class Pieza {
  //Los atributos de un objeto de la clase Pieza son los siguientes:
  //un par de coordenadas (x,y),un color y un valor booleano que me indica 
  //si se esta moviendo o no, y un angulo que indica su rotacion.
  //Adicionalmente tiene otros atributos internos que se usan para el correcto
  //funcionamiento pero no estan pensados para ser accedidos ni manipulados 
  //por el usuario.

  float x, y; //las coordenadas
  color relleno; //el color
  float ang; //angulo

//Atributos internos:

  float x0=0; //Estos cinco atributos tienen como objetivo
  float y0=0; //hacer que, al seleccionar una pieza con el mouse
  float xM=0; //y arrastrarla, sea seleccionada desde el punto
  float yM=0; //en que fue clickada y no desde la esquina superior
  boolean mov; //para mayor estetica.
  int escala=1; //Solo la uso para reflejar la figura, entonces
                //puedo dejarla como atributo interno.


  Pieza( float xF, float yF, color rellenoF, float angF) {
    x = xF;
    y = yF;
    relleno = rellenoF;
    ang = angF;
  }


  //Ahora veamos los métodos:




  void rotar(float angFal) {

    ang=ang+angFal;
  }

  void mover(float xmov, float ymov) { //El metodo mover reasigna los valores de los atributos
                                       //de posicion de la pieza de manera suave y natural basado
    if (mov==false) {                  //en el atributo mov. La idea es que x0 y y0 guardan la
                                       //posicion en el ultimo momento en que la pieza estuvo quieta,
      x0=x;                            //y xM y yM guardan el valor de la poscion del mouse en ese mismo
      y0=y;                            //momento, para poder hacer el movimiento relativo a la
      xM=xmov;                         //distancia entre estos puntos.
      yM=ymov;
    }

    if (mov==true) {

      x=xmov-(xM-x0);
      y=ymov-(yM-y0);
    }
  }

  abstract void aspecto();

  void reflect() {

    escala=-escala;  //Para reflejar el paralelogramo
  }

  void display() {
    push();
    noStroke();
    fill(relleno);
    translate(x, y);
    rotate(ang);
    scale(escala, 1);
    aspecto();
    pop();
  }

  void setMov(boolean bol) {

    mov=bol;
  }

  color relleno() {

    return relleno;
  }
}
