class Spot {

  float x, y;
  float dimension;
  float velocidad;
  int direccion = 2;
  
  // Constructor, se establecen parametros de la clase
  Spot(float xpos, float ypos, float dim, float v) {
  
  x = xpos;
  y = ypos;
  dimension = dim;
  velocidad = v;

}
//funcion de movimiento de los objetos
void move() {

  x += (velocidad * direccion);
  
  if ((x > (width - dimension / 2)) || (x < 0)) {
  
  direccion *= -1;

}
}


void move2() {

  y += (velocidad * direccion);
  
  if ((y > height) || (y < 0)) {
  
  direccion *= -1;

}

}
//Funcion de despliegue de los objetos
void display() {

  rect(x, y, dimension, dimension);

}

}

Spot sp1, sp2, sp3; // Declarar los objetos 

void setup() {

  size(200, 200);
  
  smooth();
  
  noStroke();
  
  //Especificaciones de cada objeto
  sp1 = new Spot(20, 30, 40, 0.5); // Construir sp1
  
  sp2 = new Spot(75, 50, 10, 3.0); // Construir sp2

  sp3 = new Spot(100, 80, 30, 1.5); // Construir sp3

}

void draw() {

  
  fill(0);
  rect(0, 0, width, height);
  
  //color de los objetos
  fill(random(255),random(255),random(255));
  
  //Se manda a llamar a las funciones
  sp1.move();
  
  sp2.move2();
  
  sp3.move();
  
  sp1.display();
  
  sp2.display();
  
  sp3.display();

}
