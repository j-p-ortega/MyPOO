void keyPressed() {
  loadPixels();

  if (screenState>0) {
    if (ruido<ruidoThreshold&&(key==' ')) {
      println("¡Nivel ", screenState, " superado!");
      screenState=screenState+1;
    } else if (ruido>=ruidoThreshold&&key==' ') {
      println("Intentalo de nuevo");
      ruido=0;
    }
  }

  //Para rotar una pieza a la izquiera:
  if (mouseQ==true) {
    for (int i=0; i<Tangram.length; i++) {
      if ((get(mouseX, mouseY)==Tangram[i].relleno)&&(key=='r' || key == 'R')) {

        Tangram[i].rotar(-PI/4);
      }
    }
  } else {
    for (int i=0; i<Tangram.length; i++) {
      if ((PiezaSelect==Tangram[i])&&(key=='r' || key == 'R')) {

        Tangram[i].rotar(-PI/4);
      }
    }
  }

  //Para rotar cualquier pieza a la derecha:

  if (mouseQ==true) {
    for (int i=0; i<Tangram.length; i++) {
      if ((get(mouseX, mouseY)==Tangram[i].relleno)&&(key=='e' || key == 'E')) {

        Tangram[i].rotar(PI/4);
      }
    }
  } else {
    for (int i=0; i<Tangram.length; i++) {
      if ((PiezaSelect==Tangram[i])&&(key=='e' || key == 'E')) {

        Tangram[i].rotar(PI/4);
      }
    }
  }



  //Para girar el paralelogramo:
  if ((key=='t' || key == 'T')) {

    Tangram[0].reflect();
  }



  //Para escoger la pieza seleccionada


  if (mouseQ==false) {
    if (key=='z'||key=='Z') {
      PiezaSelect=Tangram[0];
      ;
    }

    if (key=='x'||key=='X') {
      PiezaSelect=Tangram[1];
    }

    if (key=='c'||key=='C') {
      PiezaSelect=Tangram[2];
      ;
    }

    if (key=='v'||key=='V') {
      PiezaSelect=Tangram[3];
    }

    if (key=='b'||key=='B') {
      PiezaSelect=Tangram[4];
    }

    if (key=='n'||key=='N') {
      PiezaSelect=Tangram[5];
    }

    if (key=='m'||key=='M') {
      PiezaSelect=Tangram[6];
    }
  }

  //Para cambiar de modo de juego
  if (key==TAB) {
    if(mouseQ==true){
      print("Modo de juego cambiado a 'Solo teclado'. Comandos para seleccionar pieza: \nz = paralelogramo, x = cuadrado, c = Trian rojo, v = Triang amarillo, \nb = Triangulo verde, n = Triang morado, m = Triang blanco\n");

    }
    else{
    print("Modo de juego cambiado a 'Mouse y Teclado'");
    }
    mouseQ=!mouseQ;
    PiezaSelect=ninguna;
  }

  if (key=='+'&&vel<61) {
    vel=vel+1;
  }

  if (key=='-'&&vel>1) {
    vel=vel-1;
  }

  if (key=='d'||key=='D') {
    horMove=horMove+vel;

    for (int i=0; i<Tangram.length; i++) {

      if (PiezaSelect==Tangram[i]) {
        Tangram[i].setMovimiento(true);
      }
    }
  }


  if (key=='a'||key=='A') {
    horMove=horMove-vel;

    for (int i=0; i<Tangram.length; i++) {

      if (PiezaSelect==Tangram[i]) {
        Tangram[i].setMovimiento(true);
      }
    }
  }
  if (key=='w'||key=='W') {
    verMove=verMove-vel;
    for (int i=0; i<Tangram.length; i++) {

      if (PiezaSelect==Tangram[i]) {
        Tangram[i].setMovimiento(true);
      }
    }
  }
  if (key=='s'||key=='S') {
    verMove=verMove+vel;
    for (int i=0; i<Tangram.length; i++) {

      if (PiezaSelect==Tangram[i]) {
        Tangram[i].setMovimiento(true);
      }
    }
  }
}
void keyReleased() {

  horMove=0;
  verMove=0;

  if (key=='d'||key=='D'||key=='a'||key=='A'||key=='w'||key=='W'||key=='s'||key=='S') {

    for (int i=0; i<Tangram.length; i++) {

      if (PiezaSelect==Tangram[i]) {
        Tangram[i].setMovimiento(false);
      }
    }
  }



  //Para cambiar de pantallas:

  if (key=='h'||key=='H') {
    screenState=0;
  }

  if (key=='1'&&screenState== 0) {
    screenState= -1;
  }

  if (key=='2'&&screenState== 0) {
    screenState=1;
  }



  if (key=='1'&&screenState== -2) {
    screenState=1;
  }

  if (key=='2'&&screenState== -2) {
    screenState=2;
  }

  if (key=='3'&&screenState== -2) {
    screenState=3;
  }

  if (key=='4'&&screenState==-2) {
    screenState=4;
  }

  if (key=='5'&&screenState==-2) {
    screenState=5;
  }

  if (key=='3'&&screenState== 0) {
    screenState= -2;
  }
}



void mousePressed() {

  if (mouseQ==true) {


    for (int i=0; i<Tangram.length; i++) {
      if ((get(mouseX, mouseY)==Tangram[i].relleno)&&(Tangram[i].mov==false)) {

        Tangram[i].setMovimiento(true);
      }
    }
  }
}

void mouseReleased() {

  if (mouseQ==true) {

    for (int i=0; i<Tangram.length; i++) {


      Tangram[i].setMovimiento(false);
    }
  }
}

void mouseClicked() {

  int screenStateF = screenState;

  if (get(mouseX, mouseY)==color(170)||get(mouseX, mouseY)==color(1, 0, 1)) {

    screenState=0;
  }

  if (get(mouseX, mouseY)==color(171)||get(mouseX, mouseY)==color(1)) {

    screenState=-1;
  }

  if (get(mouseX, mouseY)==color(173)||get(mouseX, mouseY)==color(3)) {

    screenState=-2;
  }


  if (get(mouseX, mouseY)==color(172)||get(mouseX, mouseY)==color(2)) {

    screenState=1;
  }

  if (get(mouseX, mouseY)==color(169)||get(mouseX, mouseY)==color(5)) {

    screenState=2;
  }

  if (get(mouseX, mouseY)==color(168)||get(mouseX, mouseY)==color(6)) {

    screenState=3;
  }

  if (get(mouseX, mouseY)==color(167)||get(mouseX, mouseY)==color(7)) {

    screenState=4;
  }

  if (get(mouseX, mouseY)==color(166)||get(mouseX, mouseY)==color(8)) {

    screenState=5;
  }


  if (screenState!=screenStateF) {


  Tangram[0] = new Quad(0, 0, naranja, false, 0, d, d, 3*d, d, 2*d, 0); //paralelogramo =0
  Tangram[1] = new Quad(3*d, d, azul, false, PI/4,0,sqrt(2)*d,sqrt(2)*d,sqrt(2)*d,sqrt(2)*d,0); //cuadrado =1
  Tangram[2] = new Triang(2*d, 2*d, rojo, false, 0,-2*d, -2*d, -2*d, 2*d); //granTriang1=2
  Tangram[2].rotar(-PI/2);
  Tangram[3] = new Triang(2*d, 2*d, amarillo, false, 0,-2*d, -2*d, -2*d, 2*d); //granTriang2=3
  Tangram[4] = new Triang(3*d, 3*d, verde, false, 0,-d, -d, d, -d); //miniTriang1=4
  Tangram[4].rotar(PI/2);
  Tangram[5] = new Triang(2*d, 2*d, morado, false, 0,-d, -d, d, -d); //miniTriang2=5
  Tangram[6] = new Triang(4*d, 0, blanco, false, 0,-2*d, 0, 0, 2*d); //medioTriang=6
  ninguna    = new Triang(0, 0, naranja, false, 0,-2*d, 0, 0, 2*d);


  }
}


void movement(boolean gamemodeF) {

  if (gamemodeF==true) {
    for (int i=0; i<Tangram.length; i++) {


      Tangram[i].mover(mouseX, mouseY);
    }
  }

  if (gamemodeF==false) {
    for (int i=0; i<Tangram.length; i++) {


      Tangram[i].mover(horMove, verMove);
    }
  }
}
