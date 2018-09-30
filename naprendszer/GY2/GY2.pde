
ArrayList<Shape> shapes = new ArrayList<Shape>();
Shape selected_shape = null;

  //Rectangle rectangle = new Rectangle();
  Circle circle = new Circle();
  //SinWawe wawe = new SinWawe();
  
void setup() {
  size(1600, 800);
 /* Rectangle r = new Rectangle();
  r.position.x = 300;
  r.position.y = 300;
  

    Circle c = new Circle();
    c.position.x = 600;
    c.position.y = 400;
  
    shapes.add(r);*/
    //shapes.add(c);
    
    //rectangle.position.x = 0;
    //rectangle.position.y = 0;
    generateSolarSystem();
}
void draw() {
  update();
  background(0);
  int begin_x = 100;
  int begin_y = 100;
  int distance = 1;
  
  for (Shape s : shapes) {
   pushMatrix();
     //rotate(millis()/600.0f);
     rotate(millis()/s.speed);
     fill(255, 255, 255);
     text(s.name, begin_x+distance, begin_y+30);
     translate(begin_x+distance, begin_y);
     scale(1.1, 1.1);
     s.Draw(); 
     
     distance += 100;
     //rotate(millis()/600.0f);
   //System.out.println("name: " + s.name);
    popMatrix();
  } 
  
  //for (Shape s : shapes) {} 
  
  //pushMatrix();
    //translate(300,100);
    //translate(100, 20);
    //rotate(PI);
    //rotate(-PI);
    //translate(100, 100);
    //scale(sin(millis()/1000.0f), cos(millis()/1000.0f));  //téglalap forgatás
    //rectangle.Draw();
  //popMatrix();
  
  //bolygórendszer az egér köré
   /*pushMatrix();
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
   */
   
  //sinus hullám
   //wave.Draw();
}

void generateSolarSystem() {
  /**/
  int d = 10;
  /**/
  for(int idx = -1; idx<9; ++idx){
    Shape planet = new Circle();
    switch(idx) {
      case -1: 
        //Sun
        planet.planet_color_r = 219;
        planet.planet_color_g = 138;
        planet.planet_color_b = 63;
        planet.name = "Sun";
        planet.mass = "33011 x 10^23";
        planet.speed = 1600.0f;
        break;
      case 0: 
        //Mercury
        planet.planet_color_r = 128;
        planet.planet_color_g = 128;
        planet.planet_color_b = 128;
        planet.name = "Mercury";
        planet.mass = "33011 x 10^23";
        planet.speed = 1300.0f;
        break;
      case 1: 
        // Venus
        planet.planet_color_r = 255;
        planet.planet_color_g = 255;
        planet.planet_color_b = 0;
        planet.name = "Venus";
        planet.mass = "4.8675 × 10^24 kg";
        planet.speed = 1800.0f;
        break;
      case 2: 
        // Earth
        planet.planet_color_r = 0;
        planet.planet_color_g = 0;
        planet.planet_color_b = 255;
        planet.name = "Earth";
        planet.mass = "4.8675 × 10^24 kg";
        planet.speed = 1500.0f;
        break;
      case 3: 
        // Mars
        planet.planet_color_r = 255;
        planet.planet_color_g = 128;
        planet.planet_color_b = 0;
        planet.name = "Mars";
        planet.mass = "4.8675 × 10^24 kg";
        planet.speed = 1900.0f;
        break;
      case 4: 
        // Jupiter
        planet.planet_color_r = 150;
        planet.planet_color_g = 75;
        planet.planet_color_b = 0;
        planet.name = "Jupiter";
        planet.mass = "4.8675 × 10^24 kg";
        planet.speed = 1350.0f;
        break;
      case 5: 
        // Saturn
        planet.planet_color_r = 147;
        planet.planet_color_g = 131;
        planet.planet_color_b = 105;
        planet.name = "Saturn";
        planet.mass = "4.8675 × 10^24 kg";
        planet.speed = 1700.0f;
        break;
      case 6: 
        // Uranus
        planet.planet_color_r = 140;
        planet.planet_color_g = 205;
        planet.planet_color_b = 216;
        planet.name = "Uranus";
        planet.mass = "4.8675 × 10^24 kg";
        planet.speed = 1600.0f;
        break;
      case 7: 
        // Neptune
        planet.planet_color_r = 53;
        planet.planet_color_g = 110;
        planet.planet_color_b = 163;
        planet.name = "Neptune";
        planet.mass = "4.8675 × 10^24 kg";
        planet.speed = 1900.0f;
        break;
      case 8: 
        // Pluto
        planet.planet_color_r = 194;
        planet.planet_color_g = 196;
        planet.planet_color_b = 168;
        planet.name = "Pluto";
        planet.mass = "4.8675 × 10^24 kg";
        planet.speed = 1200.0f;
        break;
    }
    
    shapes.add(planet);
    /**/
    text("added: " + planet.name, 10, d);
    d += 10;
    /**/
  }
  
  //check
  d += 10;
  for(Shape s : shapes) {
    text("check - " + s.name, 10, d);
    d += 10;
  }
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
  /*Shape s;
  if (millis() % 2 == 0) {
   s = new Rectangle(); 
  } else {
   s = new Circle(); 
  }
  
  s.position = new PVector(mouseX, mouseY);
  shapes.add(s);*/
}
