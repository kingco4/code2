Circle c;
ArrayList <Circle> cDot;

void setup(){
  
  size(600, 600);
  background(0);
  
  c = new Circle(random(50, width), random(0,height));
  cDot = new ArrayList<Circle>();
  
}

void draw(){
 
  
  for(int i = 0; i < cDot.size(); i++){
    Circle c = cDot.get(i);
    c.directional();
    c.display();
    c.mvement();
    }
    
   if(frameCount%10 == 0 ){
     cDot.add(new Circle(random(50, width), random(0, height)));
     
   }
}
