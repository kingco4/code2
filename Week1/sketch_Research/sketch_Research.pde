//one thing I didnt do so well in with code 1 wa undertstaning mapping 
//so I looked up map on processing.org and found some different documentation 
//on mapping and trying to understand how mapping works


//one attempt using map with the help with the processing website
//altering code and trying to figure out different way it works 
//by looking at what the changed of numbers does for the program.
//https://processing.org/reference/map_.html
    //void setup() {
    //  size(600, 600);
    //  noStroke();
    //}
    
    //void draw() {
    //  background(204, 0, 0);
    //  float  x1 = map(mouseX, 0, width, 50, width);
    //  float  y1 = map(mouseY, 0, height, 0, height);
    //  rect(x1, y1, 200, 200);  
    //  float x2 = map(mouseX, 0, width, 0, 200);
    //  float y2 = map(mouseY, 0, height, 0, height);
    //  rect(x2, y2, 150, 150);  
    //}
    
 //my own attempt at map
 
void setup(){
  size(600, 600);
  noStroke();
  background(0);
  
}

void draw(){
float size1, size2;
size1 = map(mouseX, 0, width, 0, height);
size2 =map(mouseY, 0, width, 0, height);
ellipse(width/2, height/2, size1, size2 );
  
}

//this is more so a failed attempt because I couldnt accomplish what I set out to do
//but I did make a cool shape with the map function.
