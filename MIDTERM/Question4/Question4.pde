int state = 0;

void setup(){
  size(600, 600);
  noStroke();

}
void draw(){
  background(255);
  switch (state) {
  case 0:
    scene0();
    break;
  case 1:
    scene1();
    break;
  case 2:
    scene2();
    break;
  case 3:
    scene3();
    break;
  case 4:
    scene4();
  default:
    break;
  }
} 

void keyPressed() {
  switch (state) {
  case 0:
    if (key == 'a') {
      state = 1;
    }
    break;
  case 1:
    if (key == 'b') {
      state = 2;
    }
    break;
  case 2:
    if (key == 'c') {
      state = 3;
    }
    break;
  case 3:
    if (key == 'd') {
      state = 4;
    }
    break;
  case 4:
    if (key == 'e') {
      state = 0;
    }
  break;
  }
}

void scene0(){
  fill(0);
  ellipse(width/2, height/2, 400, 400);
  
}

void scene1(){
  fill(255, 0, 0);
  ellipse(width/2, height/2, 300, 300);
}

void scene2(){
  fill(0, 255, 0);
  ellipse(width/2, height/2, 200, 200);
}

void scene3(){
  fill(0, 0, 255);
  ellipse(width/2, height/2, 100, 100);
}

void scene4(){
  background(0);
}
