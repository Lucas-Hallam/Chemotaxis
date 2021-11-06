Bacteria[] ArrBacteria = new Bacteria[100];
void setup() {
  size(500,500);
  background(200);
  for(int i = 0;i < 10;i++) {
    for(int j = 0;j < 10;j++) {
      ArrBacteria[10*i+j] = new Bacteria(50*i+25,50*j+25);
      ArrBacteria[10*i+j].show();
    }
  }   
}   
void draw() {
  background(200);
  for(int i = 0;i < 100;i++) {
    ArrBacteria[i].move();
    ArrBacteria[i].show();
  }  
}  
class Bacteria {
  boolean food;
  int myX,myY,foodX,foodY,bacteriaSize,bacteriaSpeed;
  double walkDirection;
  color bacteriaColor;
  Bacteria(int x, int y) {
    myX = x;
    myY = y;
    bacteriaColor = color((int)(256*Math.random()),(int)(256*Math.random()),(int)(256*Math.random()),(int)(256*Math.random()));
    bacteriaSize = (int)(30*Math.random()+10);
    bacteriaSpeed = (int)(3*Math.random()+2);
  }
  void food(int x, int y) {
    food = true;
    foodX = x;
    foodY = y;
  }
  void move() {
    walkDirection = 2*PI*Math.random();
    myX = myX + (int)(bacteriaSpeed*Math.cos(walkDirection));
    myY = myY + (int)(bacteriaSpeed*Math.sin(walkDirection));
  }
  void show() {
    fill(bacteriaColor);
    ellipse(myX,myY,bacteriaSize,bacteriaSize);
  }
 }    
