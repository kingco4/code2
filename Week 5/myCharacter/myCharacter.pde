int mv;
//head
float xpos = 400;
//eyes
float xy1 = 380;
//feet
float xf1 = 375;
//body
float xb1 = 350;
//hands
float xh1 = 335;
//arms
float xa1 = 350;



void setup(){
  
  size(600, 600);
  noStroke();

}

void draw(){
  background(255);
  harc();
  keyPressed();
  
  
  
}

void keyPressed(){
 switch(mv){
  case 0:
  if (key == 'd'){
    xpos ++;
    xy1 ++;
    xf1 ++;
    xb1 ++;
    xh1 ++;
    xa1 ++;
  } else if (key == 'a'){
    xpos --;
    xy1 --;
    xf1 --;
    xb1 --;
    xh1 --;
    xa1 --;
    }
   break;
   case 1:
    if (key == 'w'){
     background(74, 1, 75);
     } 
   break;
   case 2:
   if (key == 's'){
   background(250, 203, 15);
    }
    break;
    
  }
}

void harc(){
  //head
   fill(19, 242, 5);
   ellipse(xpos, 450, 100, 100);
   //eyes
   fill(0);
   ellipse(xy1, 420, 10, 10);
   ellipse(xy1 + 40, 420, 10, 10);
   //feet
   fill(0, 0, 255);
   ellipse(xf1, 575,20, 20);
   ellipse(xf1 + 50, 575,20, 20);
   //body
   fill(1, 75, 25);
   rect(xb1, 450, 100, 125);
   //hands
   fill(19, 242, 5);
   ellipse(xh1, 520,20, 20);
   ellipse(xh1 + 130, 520,20, 20);
  
   //arms
   fill(1, 75, 25);
   triangle(xa1, 450, xa1, 520, xa1 - 30, 520);
   translate(100, 0);
   triangle(xa1, 450, xa1, 520, xa1 + 30, 520);
      
  
}
