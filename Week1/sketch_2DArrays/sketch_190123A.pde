//Basic 2D array
  //2D array
  //that stores color, size
  //need to be a mouse pressed
  //conditional to see if we are clicking on the square
  //boolean 2d array

int num = 10; //number of r & c
color c [][];
boolean clicked[][];
int size;

void setup(){
  noStroke();
  size(600, 600);
  size = width/num;
  c = new color [num][num];
  clicked = new boolean[num][num];
  
  for(int i = 0; i < num; i ++){
    for(int j = 0; j < num; j ++){
      //sets up color of squares to white
       c[i][j] = color(random(0, 255), random(0, 255), random(0, 255));
       //all squares are unclicked
      clicked[i][j] = false;
      }
      
    }
  }
  
  
void draw(){
   for(int i = 0; i < num; i ++){
    for(int j = 0; j < num; j ++){
      if(mouseX > i* size && mouseX <= (i + 1) * size
      && mouseY > j * size && mouseY <= (j + 1) * size 
      && mousePressed){
        clicked[i][j] = true;
      }
      if(clicked[i][j]){
       fill(c[i][j]);
            } else {
        fill(0);
      }
      
      rect(i*size, j*size, size, size);
    }
  }
  
  
}
