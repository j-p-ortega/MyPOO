
class Triang extends Pieza {

  float coord1, coord2, coord3, coord4;

  Triang (float xF, float yF, color rellenoF, float angF, float coord1F, float coord2F, float coord3F, float coord4F) {

    super(xF, yF, rellenoF, angF);
    
    coord1=coord1F;
    coord2=coord2F;
    coord3=coord3F;
    coord4=coord4F;

  }

  @Override
    void aspecto() {
      
      triangle(0,0,coord1,coord2,coord3,coord4);
    }


}
