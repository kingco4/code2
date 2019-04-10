float y;
float offset;
float noisei;
float rain;
float n;

void setup(){
  size(500, 500);
  background(0);
}

void draw(){
  
  if(y >= height){
    y =0; 
  }
  y++;
  
  offset += 0.003;
  noisei = noise(offset);
  n = random(0, width);
  rain = map(noisei, 0, 200, n, width);
  
  ellipse(rain, y, 10, 10);
  
  
}
