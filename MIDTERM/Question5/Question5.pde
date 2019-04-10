float r; 
color bgColor;

String [] oldColors;
String lastColor;

void setup(){
  size(600, 600); 
  
oldColors = loadStrings("bgcolor.csv");
  lastColor = oldColors[0];
    for (int i = 0; i<oldColors.length; i++) {
      if (i > i-1) {
        lastColor = oldColors[i];
      }
    }

  background(int(lastColor)); 
}
  



void draw(){
  background(bgColor); 
  text("back ground # : " + bgColor, 100, 100); 
  
}

void mousePressed(){
  bgColor = color(random(0,255), random(0,255), random(0,255)); 
  ellipse(mouseX, mouseY, 50, 50); 

}

void save(){
  oldColors = append(oldColors, str(bgColor));
  saveStrings("bgcolor.csv", oldColors);
  exit();
}
