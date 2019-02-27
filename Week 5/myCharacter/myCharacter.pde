int mv;

void setup(){
  
  size(600, 600);
  noStroke();
  background(255);
}

void draw(){
  harc();
  
  switch(mv){
    case 0:
    
    break;
    case 1:
    
    break;
    case 2:
    
    
    break;
  }
  
  
}

void keyPressed(){
  if (key == 'w'){
    
  } 
}

void harc(){
  //head
   fill(19, 242, 5);
   ellipse(400, 450, 100, 100);
   //eyes
   fill(0);
   ellipse(380, 420, 10, 10);
   ellipse(420, 420, 10, 10);
   //feet
   fill(0, 0, 255);
   ellipse(375, 575,20, 20);
   ellipse(425, 575,20, 20);
   
   //body
   fill(1, 75, 25);
   rect(350, 450, 100, 125);
   //hands
   fill(19, 242, 5);
   ellipse(335, 520,20, 20);
   ellipse(465, 520,20, 20);
  
   //arms
   fill(1, 75, 25);
   triangle(350, 450, 350, 520, 320, 520);
   translate(100, 0);
   triangle(350, 450, 350, 520, 380, 520);
      
  
}
