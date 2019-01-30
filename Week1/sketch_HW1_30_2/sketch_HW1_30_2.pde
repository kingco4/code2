void setup(){
  //setting up the size of the canvas
  size(600, 600);
  
  noStroke();
}
void draw(){
  //for loop that determines the points/ distances of the pixels
  //on both the x and y axises
  for(int i = 0; i < width; i+=2 ){
    for(int j = 0; j < height; j+=2){
      //calculating the distance between the pixels and mouseX & mouseY
      float distX = dist( i, 0, mouseX, 0);
      float distY = dist(j, 0, mouseY, 0);
      
      //using map to determine the color of the screen based on the 
      //distance from the origin point and mouseX or mousY
      float r = map(distX, 0, width, 0, 255);
      float g = map(distY, 0, height, 0, 255);
      
      //gives colors to the pixels
      fill( r, g, 175);
      //draws the pixels
      rect(i, j, 2, 2);
    }
}
}
