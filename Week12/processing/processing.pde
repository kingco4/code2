PShape sun, planet1, planet2;
PImage sunText, planet1Text, planet2Text;

void setup(){
  fullScreen(P3D);
  
  
  sunText = loadImage("sunmap.jpg");
  planet1Text = loadImage("Earth.jpeg");
  planet2Text = loadImage("juupiter.jpg");
  
  fill(255);
  noStroke();
    
  sun = createShape(SPHERE, 225);
  sun.setTexture(sunText);
  planet1 = createShape(SPHERE, 150);
  planet1.setTexture(planet1Text);
  planet2 = createShape(SPHERE, 200);
  planet2.setTexture(planet2Text);
  

  
}

void draw(){
  background(0);
  
  pushMatrix();
  translate(width/2, height/2, -270);
    pushMatrix(); //new coordinate system for our canvas
    
    rotateY(PI * frameCount / 500);
   
    shape(sun);
    popMatrix(); //
     
     
     
     rotateY(PI * frameCount / 300);
     translate(0, 0, 700);
        shape(planet2);
     pushMatrix();
         translate(0, 0, 300);
    shape(planet1);
    
    popMatrix();
  popMatrix();
  
  translate(.75*width, .6 * height, 50);

  
}
