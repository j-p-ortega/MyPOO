class Quad extends Pieza {

  float coord1, coord2, coord3, coord4, coord5, coord6;

  Quad (float xF, float yF, color rellenoF, float angF, float coord1F, float coord2F, float coord3F, float coord4F, float coord5F, float coord6F) {



    super(xF, yF, rellenoF, angF);

    coord1=coord1F;
    coord2=coord2F;
    coord3=coord3F;
    coord4=coord4F;
    coord5=coord5F;
    coord6=coord6F;
  }



  @Override
    void aspect() {

    quad(0, 0, coord1, coord2, coord3, coord4, coord5, coord6);
  }
}
