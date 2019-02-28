int mv;
int bg;
//head
float xpos = 400;





void setup(){
  
  size(600, 600);
  noStroke();

}

void draw(){
  background(255);
  
  
   switch(bg){
   case 0:
   background(74, 1 , 75);
   break;
   
   case 1: 
   background(250, 203, 15);
   break;
    
    
  }
  
  switch(mv){
    case 0:
    xpos = xpos;
    break;
    case 1:
    xpos --;
    break;
     case 2:
    xpos ++;
    break;
  
    
  }
  harc();
  
}

void keyPressed(){
  if(key == 'a'){
    mv = 1;
    bg = 0;
  } else if (key =='d'){
    mv = 2;
    bg = 1;
  } else{
    mv = 0;
  }
    
  }

void harc(){
  //head
   fill(19, 242, 5);
   ellipse(xpos, 450, 100, 100);
   //eyes
   fill(0);
   ellipse(xpos - 20, 420, 10, 10);
   ellipse(xpos + 20, 420, 10, 10);
   //feet
   fill(0, 0, 255);
   ellipse(xpos - 25, 575,20, 20);
   ellipse(xpos + 25, 575,20, 20);
   //body
   fill(1, 75, 25);
   rect(xpos - 50, 450, 100, 125);
   //hands
   fill(19, 242, 5);
   ellipse(xpos - 65, 520,20, 20);
   ellipse(xpos + 65, 520,20, 20);
  
   //arms
   fill(1, 75, 25);
   triangle(xpos - 50, 450, xpos - 50, 520, xpos - 80, 520);
   translate(100, 0);
   triangle(xpos - 50, 450, xpos - 50, 520, xpos - 50 + 30, 520);
      
  
}
