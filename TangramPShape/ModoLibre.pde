void drawLibre() {
  

shape(granTriang1,granTriang1X,granTriang1Y);
shape(granTriang2,granTriang2X,granTriang2Y);
shape(miniTriang1,miniTriang1X,miniTriang1Y);  
shape(miniTriang2,miniTriang2X,miniTriang2Y);  
shape(medioTriang,medioTriangX,medioTriangY);
shape(cuadrilat,cuadrilatX,cuadrilatY);
shape(cuadrado,cuadradoX,cuadradoY);  


if(cuadradob==true){
 cuadradoX=mouseX-(mX-cuadradoX0); 
 cuadradoY=mouseY-(mY-cuadradoY0);
}

if(granTriang1b==true){
 granTriang1X=mouseX-(mX-granTriang1X0); 
 granTriang1Y=mouseY-(mY-granTriang1Y0);
}

if(granTriang2b==true){
 granTriang2X=mouseX-(mX-granTriang2X0); 
 granTriang2Y=mouseY-(mY-granTriang2Y0);
}

if(miniTriang1b==true){
 miniTriang1X=mouseX-(mX-miniTriang1X0); 
 miniTriang1Y=mouseY-(mY-miniTriang1Y0);
}

if(miniTriang2b==true){
 miniTriang2X=mouseX-(mX-miniTriang2X0); 
 miniTriang2Y=mouseY-(mY-miniTriang2Y0);
}

if(medioTriangb==true){
 medioTriangX=mouseX-(mX-medioTriangX0); 
 medioTriangY=mouseY-(mY-medioTriangY0);
}

if(cuadrilatb==true){
 cuadrilatX=mouseX-(mX-cuadrilatX0); 
 cuadrilatY=mouseY-(mY-cuadrilatY0);
}

if(mousePressed==false){
  mX = mouseX;
  mY = mouseY;
  cuadradoX0 = cuadradoX;
  cuadradoY0 = cuadradoY;
  granTriang1X0=granTriang1X;
  granTriang1Y0=granTriang1Y;
  granTriang2X0=granTriang2X;
  granTriang2Y0=granTriang2Y;
  miniTriang1X0=miniTriang1X;
  miniTriang1Y0=miniTriang1Y;
  miniTriang2X0=miniTriang2X;
  miniTriang2Y0=miniTriang2Y;  
  medioTriangX0=medioTriangX;
  medioTriangY0=medioTriangY; 
  cuadrilatX0=cuadrilatX;
  cuadrilatY0=cuadrilatY;
}
 
fill(170);
rect(520,520,50,50,7);

fill(200);
shape(home, 525, 525, 40,40);


  
}
