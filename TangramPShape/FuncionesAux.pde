void keyPressed() {
  loadPixels();

  //Para rotar una pieza a la izquiera:
  if (mouseQ==true) {
    if ((get(mouseX, mouseY)==azul)&&(key=='r' || key == 'R')) {
      
      cuadrado.rotar(-PI/4);
    }
    if ((get(mouseX, mouseY)==rojo)&&(key=='r' || key == 'R')) {

      granTriang1.rotar(-PI/4);
    }
    if ((get(mouseX, mouseY)==amarillo)&&(key=='r' || key == 'R')) {

      granTriang2.rotar(-PI/4);
    }
    if ((get(mouseX, mouseY)==verde)&&(key=='r' || key == 'R')) {

      miniTriang1.rotar(-PI/4);
    }
    if ((get(mouseX, mouseY)==morado)&&(key=='r' || key == 'R')) {

      miniTriang2.rotar(-PI/4);
    }
    if ((get(mouseX, mouseY)==blanco)&&(key=='r' || key == 'R')) {

      medioTriang.rotar(-PI/4);
    }
    if ((get(mouseX, mouseY)==naranja)&&(key=='r' || key == 'R')) {

      cuadrilat.rotar(-PI/4);
    }
  }

  if (mouseQ==false) {
    if ((PiezaSelect==cuadrado)&&(key=='r' || key == 'R')) {
      cuadrado.rotar(-PI/4);
    }
    if ((PiezaSelect==granTriang1)&&(key=='r' || key == 'R')) {
      granTriang1.rotar(-PI/4);
    }
    if ((PiezaSelect==granTriang2)&&(key=='r' || key == 'R')) {
      granTriang2.rotar(-PI/4);
    }
    if ((PiezaSelect==miniTriang1)&&(key=='r' || key == 'R')) {
      miniTriang1.rotar(-PI/4);
    }
    if ((PiezaSelect==miniTriang2)&&(key=='r' || key == 'R')) {
      miniTriang2.rotar(-PI/4);
    }
    if ((PiezaSelect==medioTriang)&&(key=='r' || key == 'R')) {
      medioTriang.rotar(-PI/4);
    }
    if ((PiezaSelect==cuadrilat)&&(key=='r' || key == 'R')) {
      cuadrilat.rotar(-PI/4);
    }
  }

  //Para rotar cualquier pieza a la derecha:
  if (mouseQ==true) {
    if ((get(mouseX, mouseY)==azul)&&(key=='e' || key == 'E')) {
      cuadrado.rotar(PI/4);
    }
    if ((get(mouseX, mouseY)==rojo)&&(key=='e' || key == 'E')) {
      granTriang1.rotar(PI/4);
    }
    if ((get(mouseX, mouseY)==amarillo)&&(key=='e' || key == 'E')) {
      granTriang2.rotar(PI/4);
    }
    if ((get(mouseX, mouseY)==verde)&&(key=='e' || key == 'E')) {
      miniTriang1.rotar(PI/4);
    }
    if ((get(mouseX, mouseY)==morado)&&(key=='e' || key == 'E')) {
      miniTriang2.rotar(PI/4);
    }
    if ((get(mouseX, mouseY)==blanco)&&(key=='e' || key == 'E')) {
      medioTriang.rotar(PI/4);
    }
    if ((get(mouseX, mouseY)==naranja)&&(key=='e' || key == 'E')) {
      cuadrilat.rotar(PI/4);
    }
  }


  if (mouseQ==false) {
    if ((PiezaSelect==cuadrado)&&(key=='e' || key == 'E')) {
      cuadrado.rotar(PI/4);
    }
    if ((PiezaSelect==granTriang1)&&(key=='e' || key == 'E')) {
      granTriang1.rotar(PI/4);
    }
    if ((PiezaSelect==granTriang2)&&(key=='e' || key == 'E')) {
      granTriang2.rotar(PI/4);
    }
    if ((PiezaSelect==miniTriang1)&&(key=='e' || key == 'E')) {
      miniTriang1.rotar(PI/4);
    }
    if ((PiezaSelect==miniTriang2)&&(key=='e' || key == 'E')) {
      miniTriang2.rotar(PI/4);
    }
    if ((PiezaSelect==medioTriang)&&(key=='e' || key == 'E')) {
      medioTriang.rotar(PI/4);
    }
    if ((PiezaSelect==cuadrilat)&&(key=='e' || key == 'E')) {
      cuadrilat.rotar(PI/4);
    }
  }


  //Para girar el paralelogramo:
  if ((key=='t' || key == 'T')) {

    cuadrilat.reflect();
  }



  //Para escoger la pieza seleccionada
  if (mouseQ==false) {
    if (key=='z'||key=='Z') {
      PiezaSelect=cuadrilat;
    }

    if (key=='x'||key=='X') {
      PiezaSelect=cuadrado;
    }

    if (key=='c'||key=='C') {
      PiezaSelect=granTriang1;
    }

    if (key=='v'||key=='V') {
      PiezaSelect=granTriang2;
    }

    if (key=='b'||key=='B') {
      PiezaSelect=miniTriang1;
    }

    if (key=='n'||key=='N') {
      PiezaSelect=miniTriang2;
    }

    if (key=='m'||key=='M') {
      PiezaSelect=medioTriang;
    }
  }

  //Para cambiar de modo de juego
  if (key==TAB) {
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

    if (PiezaSelect==cuadrilat) {
      cuadrilat.setMovimiento(true);
    }
    if (PiezaSelect==cuadrado) {
      cuadrado.setMovimiento(true);
    }
    if (PiezaSelect==granTriang1) {
      granTriang1.setMovimiento(true);
    }
    if (PiezaSelect==granTriang2) {
      granTriang2.setMovimiento(true);
    }
       if (PiezaSelect==miniTriang1) {
      miniTriang1.setMovimiento(true);
    }
    if (PiezaSelect==miniTriang2) {
      miniTriang2.setMovimiento(true);
    }
    if (PiezaSelect==medioTriang) {
      medioTriang.setMovimiento(true);
    }
  }
  if (key=='a'||key=='A') {
    horMove=horMove-vel;

    if (PiezaSelect==cuadrilat) {
      cuadrilat.setMovimiento(true);
    }
    if (PiezaSelect==cuadrado) {
      cuadrado.setMovimiento(true);
    }
    if (PiezaSelect==granTriang1) {
      granTriang1.setMovimiento(true);
    }
    if (PiezaSelect==granTriang2) {
      granTriang2.setMovimiento(true);
    }
    if (PiezaSelect==miniTriang1) {
      miniTriang1.setMovimiento(true);
    }
    if (PiezaSelect==miniTriang2) {
      miniTriang2.setMovimiento(true);
    }
    if (PiezaSelect==medioTriang) {
      medioTriang.setMovimiento(true);
    }
  }
  if (key=='w'||key=='W') {
    verMove=verMove-vel;
    if (PiezaSelect==cuadrilat) {
      cuadrilat.setMovimiento(true);
    }
    if (PiezaSelect==cuadrado) {
      cuadrado.setMovimiento(true);
    }
    if (PiezaSelect==granTriang1) {
      granTriang1.setMovimiento(true);
    }
    if (PiezaSelect==granTriang2) {
      granTriang2.setMovimiento(true);
    }
    if (PiezaSelect==miniTriang1) {
      miniTriang1.setMovimiento(false);
    }
    if (PiezaSelect==miniTriang2) {
      miniTriang2.setMovimiento(false);
    }
    if (PiezaSelect==medioTriang) {
      medioTriang.setMovimiento(true);
    }
  }
  if (key=='s'||key=='S') {
    verMove=verMove+vel;
    if (PiezaSelect==cuadrilat) {
      cuadrilat.setMovimiento(true);
    }
    if (PiezaSelect==cuadrado) {
      cuadrado.setMovimiento(true);
    }
    if (PiezaSelect==granTriang1) {
      granTriang1.setMovimiento(true);
    }
    if (PiezaSelect==granTriang2) {
      granTriang2.setMovimiento(true);
    }
    if (PiezaSelect==miniTriang1) {
      miniTriang1.setMovimiento(false);
    }
    if (PiezaSelect==miniTriang2) {
      miniTriang2.setMovimiento(false);
    }
    if (PiezaSelect==medioTriang) {
      medioTriang.setMovimiento(true);
    }
  }
}

void keyReleased() {

  horMove=0;
  verMove=0;

  if (key=='d'||key=='D') {

    if (PiezaSelect==cuadrilat) {
      cuadrilat.setMovimiento(false);
    }
    if (PiezaSelect==cuadrado) {
      cuadrado.setMovimiento(false);
    }
    if (PiezaSelect==granTriang1) {
      granTriang1.setMovimiento(false);
    }
    if (PiezaSelect==granTriang2) {
      granTriang2.setMovimiento(false);
    }
    if (PiezaSelect==miniTriang1) {
      miniTriang1.setMovimiento(false);
    }
    if (PiezaSelect==miniTriang2) {
      miniTriang2.setMovimiento(false);
    }
    if (PiezaSelect==medioTriang) {
      medioTriang.setMovimiento(false);
    }
  }
  if (key=='a'||key=='A') {


    if (PiezaSelect==cuadrilat) {
      cuadrilat.setMovimiento(false);
    }
    if (PiezaSelect==cuadrado) {
      cuadrado.setMovimiento(false);
    }
    if (PiezaSelect==granTriang1) {
      granTriang1.setMovimiento(false);
    }
    if (PiezaSelect==granTriang2) {
      granTriang2.setMovimiento(false);
    }
    if (PiezaSelect==miniTriang1) {
      miniTriang1.setMovimiento(false);
    }
    if (PiezaSelect==miniTriang2) {
      miniTriang2.setMovimiento(false);
    }
    if (PiezaSelect==medioTriang) {
      medioTriang.setMovimiento(false);
    }
  }
  if (key=='w'||key=='W') {

    if (PiezaSelect==cuadrilat) {
      cuadrilat.setMovimiento(false);
    }
    if (PiezaSelect==cuadrado) {
      cuadrado.setMovimiento(false);
    }
    if (PiezaSelect==granTriang1) {
      granTriang1.setMovimiento(false);
    }
    if (PiezaSelect==granTriang2) {
      granTriang2.setMovimiento(false);
    }
    if (PiezaSelect==miniTriang1) {
      miniTriang1.setMovimiento(false);
    }
    if (PiezaSelect==miniTriang2) {
      miniTriang2.setMovimiento(false);
    }
    if (PiezaSelect==medioTriang) {
      medioTriang.setMovimiento(false);
    }
  }
  if (key=='s'||key=='S') {

    if (PiezaSelect==cuadrilat) {
      cuadrilat.setMovimiento(false);
    }
    if (PiezaSelect==cuadrado) {
      cuadrado.setMovimiento(false);
    }
    if (PiezaSelect==granTriang1) {
      granTriang1.setMovimiento(false);
    }
    if (PiezaSelect==granTriang2) {
      granTriang2.setMovimiento(false);
    }
    if (PiezaSelect==miniTriang1) {
      miniTriang1.setMovimiento(false);
    }
    if (PiezaSelect==miniTriang2) {
      miniTriang2.setMovimiento(false);
    }
    if (PiezaSelect==medioTriang) {
      medioTriang.setMovimiento(false);
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

    if (get(mouseX, mouseY)==azul&&cuadrado.mov==false) {
      cuadrado.setMovimiento(true);
    } else if (get(mouseX, mouseY)==rojo&&granTriang1.mov==false) {
      granTriang1.setMovimiento(true);
    } else if (get(mouseX, mouseY)==amarillo&&granTriang2.mov==false) {
      granTriang2.setMovimiento(true);
    } else if (get(mouseX, mouseY)==verde&&miniTriang1.mov==false) {
      miniTriang1.setMovimiento(true);
    } else if (get(mouseX, mouseY)==morado&&miniTriang2.mov==false) {
      miniTriang2.setMovimiento(true);
    } else if (get(mouseX, mouseY)==blanco&&medioTriang.mov==false) {
      medioTriang.setMovimiento(true);
    } else if (get(mouseX, mouseY)==naranja&&cuadrilat.mov==false) {
      cuadrilat.setMovimiento(true);
    }
  }
}

void mouseReleased() {

  if (mouseQ==true) {

    cuadrado.setMovimiento(false);

    granTriang1.setMovimiento(false);

    granTriang2.setMovimiento(false);

    miniTriang1.setMovimiento(false);

    miniTriang2.setMovimiento(false);

    medioTriang.setMovimiento(false);

    cuadrilat.setMovimiento(false);
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

  cuadrilat   = new Quad(1, 0, 0, naranja, false,0);
  cuadrado    = new Quad(2, 3*d, d, azul, false,0);
  granTriang1 = new Triang(1, 2*d, 2*d, rojo, false,0);
  granTriang1.rotar(-PI/2);
  granTriang2 = new Triang(1, 2*d, 2*d, amarillo, false,0);
  miniTriang1 = new Triang(3, 3*d, 3*d, verde, false,0);
  miniTriang1.rotar(PI/2);
  miniTriang2 = new Triang(3, 2*d, 2*d, morado, false,0);
  medioTriang = new Triang(2, 4*d, 0, blanco, false,0);
  ninguna     = new Triang(2, 0, 0, naranja, false,0);
  }
}


void movement(boolean gamemodeF) {

  if (gamemodeF==true) {
    granTriang1.mover(mouseX, mouseY);
    granTriang2.mover(mouseX, mouseY);
    miniTriang1.mover(mouseX, mouseY);
    miniTriang2.mover(mouseX, mouseY);
    medioTriang.mover(mouseX, mouseY);
    cuadrilat.mover(mouseX, mouseY);
    cuadrado.mover(mouseX, mouseY);
  }

  if (gamemodeF==false) {
    granTriang1.mover(horMove, verMove);
    granTriang2.mover(horMove, verMove);
    miniTriang1.mover(horMove, verMove);
    miniTriang2.mover(horMove, verMove);
    medioTriang.mover(horMove, verMove);
    cuadrilat.mover(horMove, verMove);
    cuadrado.mover(horMove, verMove);
  }
}
