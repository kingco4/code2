Circle c;
ArrayList <Circle> cDot;

void setup(){
  
  size(600, 600);
  background(0);
  
  c = new Circle(random(50, width), random(50,height));
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
     cDot.add(new Circle(random(50, width), random(50, height)));
     
   }
   
   c.directional();
   c.display();
   c.mvement();
}
//with my code I noticed that when I use the key pressed to rotate the shape is slows down the program
//im not sure how to make it work
