
ArrayList<Shape> shapes = new ArrayList<Shape>();
Shape selected_shape = null;

Rectangle rectangle = new Rectangle();
  Circle circle = new Circle();
  //SinWawe wawe = new SinWawe();
  
void setup() {
  size(800, 600);
  Rectangle r = new Rectangle();
  r.position.x = 300;
  r.position.y = 300;
  

    Circle c = new Circle();
    c.position.x = 600;
    c.position.y = 400;
  
    shapes.add(r);
    shapes.add(c);
    
    rectangle.position.x = 0;
    rectangle.position.y = 0;
}
void draw() {
  update();
  background(255, 255, 255);
  
  for (Shape s : shapes) {
   s.Draw(); 
  } 
  
  pushMatrix();
    //translate(300,100);
    //translate(100, 20);
    //rotate(PI);
    //rotate(-PI);
    translate(100, 100);
    scale(sin(millis()/1000.0f), cos(millis()/1000.0f));  //téglalap forgatás
    rectangle.Draw();
  popMatrix();
  
  //bolygórendszer az egér köré
   pushMatrix();
     translate(mouseX, mouseY);
     scale(1.4, 1.4);
     circle.Draw();
     //c.Draw();
     //ellipse (mouseX, mouseY, 2*mouse_radius, 2*mouse_radius);
     
     rotate(millis()/600.0f);
     translate(160,0);
     scale(0.8, 0.8);
     //c.Draw();
     circle.Draw();
     
     pushMatrix();
       rotate(millis()/400.0f);
       scale(0.8,0.8);
       translate(80, 0);
       circle.Draw();
       
       pushMatrix();
         rotate(millis()/300.0f);
         scale(0.8, 0.8);
         translate(50, 0);
         circle.Draw();
       popMatrix();
       
     popMatrix();
     
   popMatrix();
   
   
  //sinus hullám
   //wave.Draw();
}

void update() {
 if (selected_shape != null) {
  selected_shape.selected = false;
  selected_shape = null;
 }
 
 for (Shape s : shapes) {
   if (s.Contains(mouseX, mouseY)) {
     s.selected = true;
     selected_shape = s;
     break;
   }
 }
   
}

void mousePressed() {
  Shape s;
  if (millis() % 2 == 0) {
   s = new Rectangle(); 
  } else {
   s = new Circle(); 
  }
  
  s.position = new PVector(mouseX, mouseY);
  shapes.add(s);
}
