int cols, rows; 
int w = 50;
int h = 25; 
int actualSecs;
int actualMins;
int startSecs = 0;
int startMins = 0;
int scrnSecs;
int scrnMins = 0;
int restartSecs = 0;
int restartMins = 0;
float score = 0;
float lives = 4;
boolean collide = false;
int myScores;
String [] oldScores;


Ball b; 
Paddle p; 
Bricks myBricks [][]; //setting up a 2D grid to store instances of our bricks

void setup(){
  size(500, 500); 
  textSize(23);
  cols = width/w; 
  rows = int((height*.5)/h); 
  
  noStroke(); 

  myBricks = new Bricks[cols][rows]; 
  
  b = new Ball(width/2, height*.75, random(3,5), random(-5,-4)); 
  p = new Paddle(); 
  
  for(int i = 0; i<cols; i++){
    for(int j = 0; j<rows; j++){
      myBricks[i][j] = new Bricks(i*w+5, j*h+5, w-10, h-10); 
    }
  }
  
  oldScores = loadStrings("oldScores.csv");
}



void draw(){
  background(0); 
  timer();
  
  
  b.move(); 
  b.display();
  
  p.display(); 
  p.reset(); 
  
  //making sure our ball stays within the boundaries of our screen 
  if(b.pos.x<= b.size/2 || b.pos.x>= width-b.size/2){
    b.bounceSide(); 
  }
  if(b.pos.y<=b.size/2 || b.pos.y>= height-b.size/2){
    b.bounceTop(); 
  }
  
  //ball bouncing off of the paddle 
  //FIX THIS PADDLE COLLISION IS NOT WORKING...fixed
  if(b.pos.x > p.x && b.pos.x < p.x + p.w && b.pos.y > p.y && b.pos.y < p.y + p.h){ 
          b.paddleBounce(); 
          }else if(b.pos.y >= height * .75) {
            //debug this
               lives -= 1;
         }  
  
  
  //breaking bricks 
  for(int i = 0; i<cols; i++){
    for(int j = 0; j<rows; j++){
      float bl = map(i, 0, cols, 100, 255); 
      float g = map(j, 0, rows, 150, 255); 
      myBricks[i][j].display(color(50, g, bl));  
      
            // checking to see if ball is within the boundaries of our bricks 
      if(b.pos.x<= (myBricks[i][j].x + myBricks[i][j].w/2) && b.pos.x>= (myBricks[i][j].x - myBricks[i][j].w/2) 
        && b.pos.y<= (myBricks[i][j].y + myBricks[i][j].h/2) && b.pos.y>= (myBricks[i][j].y - myBricks[i][j].h/2)){
          //https://processing.org/reference/continue.html reference 
          //help from a friend in Bryans Class, Isabela
          if (myBricks[i][j].o == 0) continue;
          myBricks[i][j].o = 0;
          collide = true;
          score += 10;
          
        
      }
    }
  }
  
  if(keyPressed){
    if(key==CODED){
      if(keyCode == LEFT){
        p.moveLeft();
      }
      if(keyCode == RIGHT){
        p.moveRight(); 
      }
    }
  }
  //Lives();
  //Score();
  text("Score: " + score, 170, 470);
  text("Lives: " + lives, 350, 470);
  oldScores = append(oldScores, str(myScores));
  saveStrings("oldScores.csv", oldScores);
  exit();
  
  
  
  
}

void keyPressed(){

}
void timer(){
  actualSecs = millis()/1000;
  actualMins = millis()/1000/60;
  scrnSecs = actualSecs - restartSecs;
  scrnMins = actualMins - restartMins;
  
  textAlign(RIGHT);
  text(nf(scrnMins, 2) + ":" + nf(scrnSecs, 2), 450, 470);
  
  
}

//void Score(){
  
//  text("Score: " + score, 170, 470);
  
//}


//void Lives(){
//  text("Lives: " + lives, 350, 470);
  
//}

//for timer resource I used: https://www.openprocessing.org/sketch/78610/
//for help with scored and lives: https://www.openprocessing.org/sketch/134612/
