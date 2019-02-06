float angle = 0.0;
float incr = 0.02;
float scalr;


void setup(){
  size(600, 600);
  scalr =height/2 - 50;
}

void draw(){
  background(0);
    float x1 = width/2 + sin(angle) * scalr;
    float y1 = height/2 + sin(angle) * scalr;
     if(mousePressed == true){
    ellipse(x1, height/2, 100, 100);
         angle += incr;
         } else{ 
    ellipse(width/2, y1, 100, 100);
    angle += incr;
    }
  //mouseClicked();
  
  
  
}

//void mouseClicked(){
////float y1 = height/2 + sin(angle) * scalr;
//ellipse(width/2, y1, 100, 100);
// angle += incr;

//}
