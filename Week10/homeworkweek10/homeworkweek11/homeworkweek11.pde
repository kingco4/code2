float x;
float offset;
float noisei;
float rain;
float n;



void setup(){
  size(500, 500);
  background(0);
  stroke(255);
  noFill();
}

void draw(){
  
  
  if(x >= width){
    x =0; 
  }
  
  x++;
  
  offset += 0.01;
  noisei = noise(offset);
  n = random(0, height);
  rain = map(noisei, 0, 200, n, height);
  
  arc(rain, x, 800, 700, PI, 2 * PI);
  
  
}
