/*
Alba G Corral
 Fecha 6 nov
 Description:+alkjlkajsdkljadk
 REMIX - Carla.
 */

/*
Alba G Corral
 Fecha 6 nov
 Description:+alkjlkajsdkljadk
 REMIX - Carla.
 */

float posx= 0; //horizontal position
float posy;
float speed = 5;
int direction=1;
float dimension = 100;
color coloractual = color(255);
float angle = 0; // angle de la corba


void setup() {
  size(800, 800);

  posx = 0;
  posy = height/2; //posy = 400
  background(0);
}

void draw() {
  fill(0, 10);
  rect(0, 0, width, height);
  render();
  display();
}

void display() {
  noFill();
  stroke (255, 50);
  strokeWeight(16);
  ellipse(posx, posy, dimension, dimension);
}

void render() {
  dimension = map(mouseY, 0, width, 0, 400); 

  // moviment circular
  posx = width/2 + cos(angle) * 300; 
  posy = height/2 + sin(angle) * 300; 
  angle += 0.02; 

  
  if (posx > width + dimension/2 || posx < -dimension/2 || 
      posy > height + dimension/2 || posy < -dimension/2) {
    println("Bicheando!");
    angle = random(TWO_PI);
  }
}
