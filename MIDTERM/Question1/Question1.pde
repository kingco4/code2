float radius;
int scale = 5; 
boolean decline = true;

void setup() {
  size(500, 500);
}

void draw() {
  background(0); 

  text(printText(), width*.1, height*.1); 

  ellipse(width/2, height/2, radius, radius); 

if (decline) {
     radius += scale;
     if( radius == width){
      decline = false;
       }
          } else{
        radius -= scale;
        if(radius == 0) {
        decline = true;
        
       }
    }
}

String printText() {
  
  if(decline == true){
  return "Grow";
      }else{
  return "Shrink";
    }
}
