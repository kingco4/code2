class Circle {
  float x;
  float y;
  float s;
  float move;
  float angle;
  float angle2;

  
  Circle(float x1, float y1){
    x = x1;
    y = y1;
    s = 100;
    move = random(5, 10);
    angle += 0.1;
 
  }
    
  void display(){
    fill(random(140), random(140), random(140));
    rect(x, y, s, s);
    
  }
  
  void mvement(){
      x *= move;
      y *= move;
  }
  void directional(){
      if(key == CODED){
         if( keyCode == UP){
            rotate(11 * PI / 6);
          } else if (keyCode == DOWN) {
            rotate(PI /4 );
          }
              }   
           }
     
}
