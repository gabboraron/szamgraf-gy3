abstract class Shape {
  
  PVector position = new PVector();  
  PVector fill_color = new PVector(0, 0, 0);
  PVector stroke_color = new PVector(0, 0, 0);  
  PVector select_fill_color = new PVector(255, 0, 0);
  PVector select_stroke_color = new PVector(255, 0, 0);
  
  Boolean selected = false;
  
  int planet_color_r;
  int planet_color_g;
  int planet_color_b;
  String name;
  String mass;
  Float speed;
  
  int detailness = 10;
  
  abstract void Draw();
  abstract Boolean Contains(int x, int y);
}
