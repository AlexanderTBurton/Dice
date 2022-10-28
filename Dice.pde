void setup() {
  size(500,500);
  noLoop();
  Die aDie = new Die();
}

void draw(){
  
}

void mousePressed(){
  redraw();
}

class Die {
  int f;
  color c;
  int x;
  int y;
  Die(int x_, int y_) {
    x = x_;
    y = y_;
    c = 255;
  }

  void roll() {
  f = (int)(Math.random()*6)+1;
  
  }
  void show() {
    if(f == 1) {
    
    }
    else if(f == 2) {
    }
    else if(f == 3) {
    }
    else if(f == 4) {
    }
    else if(f == 5) {
    }
    else{
    }
  }
}

