int xPos, yPos, size; 
String [] words = {"dots", "spiders", "snakes", "goblins"};

void setup() {
  size(600, 600);
  xPos = width/8; 
  yPos = height/8; 
  size = 100; 
  textSize(30);
  textAlign(CENTER);
}

void draw() {
  background(255);
  for(int i = xPos; i < width; i+= 140){
    if (dist(i, yPos, mouseX, mouseY)<size/2) {
      fill(255, 0, 0);
      //text(words[2], width/2, height/2);
           } else {
       fill(0, 255, 0);
          }
    ellipse(i, yPos, size, size);
            }
    displayText();
  
}

void displayText(){
  for(int i = xPos; i < width; i+= 140){
    if (dist(xPos, yPos, mouseX, mouseY)<size/2) {
                  text(words[0], width/2, height/2);
        } else if (dist(xPos + 140, yPos, mouseX, mouseY)< size/2){
                  text(words[1], width/2, height/2);
        } else if (dist(xPos + 280, yPos, mouseX, mouseY)< size/2){
                  text(words[2], width/2, height/2);
        } else if (dist(xPos + 420, yPos, mouseX, mouseY)< size/2){
                  text(words[3], width/2, height/2);
        } 
  
}
}
