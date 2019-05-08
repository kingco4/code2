int cells = 3;
color clor [][];
int cols, rows;
int state = 0;
float dist = 0.0;
float speed = 4;
float bet = 50;


void setup(){
  size(1000, 1000, P3D);
}


void draw(){
//  background(0);
  switch (state) {
  case 0:
    drawStart();
    break;
  case 1:
    letterC();
    break;
  case 2:
    letterI();
    break;
  case 3:
    letterE();
    break;
   case 4:
    letterR();
    break;
  case 5:
    letterA();
    
    break;
  }
} 

void keyPressed() {
  switch (state) {
  case 0:
    if (key == 'c') {
      state = 1;
    }
    break;
  case 1:
    if (key == 'i') {
      state = 2;
    }
    break;
  case 2:
    if (key == 'e') {
      state = 3;
    }
    break;
  case 3:
    if (key == 'r') {
      state = 4;
    }
    break;
  case 4:
    if (key == 'a') {
      state = 5;
    }
  break;
  case 5:
   if(key == '4'){
     state = 0;
       }
  break;
  }
}

void drawStart(){
  background(0);
  fill(255);
  textSize(20);
  text("I work best at night, this is a look inside my mind", width/4, 400);
  fill(255, 80);
  text("type out the letters of my name, to explore a new experience,", 195, 430);
  fill(255, 60);
  text("push one key, explore, then move on to the next when ready", 195, 460);
  fill(255, 40);
  text("my name is Cierra btw", 375, 490);
  textSize(15);
  fill(0, 255, 0, 70);
  text("Press the 4 key to return back to this screen", 330, 520);
  
}

void letterC(){
   background(0);
   if (mousePressed){
   fill(random(0, 255), 0 , 0, 70);
   } else {
   fill(0, 0, random(0, 255), 70);
   }

   stroke(255);
   translate(width/2, height/2);
   rotateX(mouseX *0.03);
   rotateY(mouseY * 0.03);
   drawBox(100, 100, width);  
  
}

void drawBox(float x, float y, float s){
  box(x, y, s);
    if(s > 10){
      s*= 0.9;
      drawBox(x, y, s);
     }
    }

void letterI(){
   background(0);
  noFill();

  strokeWeight(3);
       stroke(250, random(0, 100), random(0, 100));
       for(int i = 10; i <= 500; i+= 100){
         for(int j = 10; j <= 500; j+=100){
             for(int k = 0; k <= 500; k+=100){
            pushMatrix();   
            translate(500, 450, 100);
              rotateX(frameCount * 0.01);
              rotateY(frameCount * 0.01);
               rotateZ(frameCount * 0.01);
            box(50 +i, 50 + j, 50 + k);
            popMatrix();

             }
         }
       }
}


void letterEs(){
  cols = width/cells;
  rows = height/cells;
  
  clor = new color[cols][rows];
  for(int i = 0; i<cols; i++){
    for(int j = 0; j<rows; j++){
      clor[i][j] = color(random(0, 175), random(0, 175), random(0, 175));
    }
  }
  
}
void letterE(){
  
  letterEs();
  
  noStroke();
  for (int i = 0; i<cols; i++){
    for(int j=0; j<rows; j++){
      clor [i][j] =  color(random(0, 175), random(0, 175), random(0, 175));
      fill(clor[i][j]);
      rect(i*cells, j*cells, cells, cells);
    }
    
  }
  
  rotateY(map(mouseX, 0 , width, -PI, PI));
  //rotateX(frameCount * 0.01);
  fill(255);
  textSize(80);
  text("CHA CHA CHA", 200, 450); 
}


void Rs(){
}
void letterR(){
background(0);
fill(random(0, 255), random(0, 255), random(0, 255));
textSize(40);
//translate(mouseX, mouseY, random(0, 10));

rotateX(frameCount * 0.01);

for(float i = 0; i <= 1000; i+= 40){
  for(float j =0; j <= 1000; j+= 500){
text("this was fun, wasnt it", j + 50, i);
}
  
}
  
}

void letterA(){
  background(0);
  fill(0, 255, 0);
  translate(width*.5, height*.5, 0);
  rotateX(map(mouseY, 0 , height, -PI, PI));
  rotateY(map(mouseX, 0, width, -PI, PI));
  rotateX(frameCount * 0.003);
  pushMatrix();
  textSize(40);
  text("goodNight", -40, -50, 20);
  popMatrix();
  
  
}
