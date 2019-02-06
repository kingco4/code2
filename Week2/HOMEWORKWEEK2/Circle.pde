class Circle {
  float x;
  float y;
  float s;
  float move;

  
  Circle(float x1, float y1){
    x = x1;
    y = y1;
    s = 100;
    move = random(0.4, 2.5);
 
  }
    
  void display(){
    fill(random(140), random(140), random(140));
    rect(x, y, s, s);
    
  }
  
  void mvement(){
      x *= 0.5;
      y *= 0.4;
  

  }
  void directional(){
      if(key == CODED){
         if( keyCode == UP){
            rotate( 11 * PI / 6);
          } else if (keyCode == DOWN) {
            rotate(PI / 4);
          }
              }     
           }
}
