void setup() {
  size(550,550);
  noLoop();
  //Die aDie = new Die(); idk why this exists
}

void draw(){
  background(0,200,0);
  for(int y = 10; y < 500; y = y += 60) {
    for (int x = 10; x < 500; x = x += 60) {
      Die aDie = new Die (x, y);
      aDie.roll();
      aDie.show();
    }
  }
}

void mousePressed(){
  redraw();
}

class Die {
  int f; //side rolled
  color c;
  int x;
  int y;
  Die(int x_, int y_) {
    x = x_;
    y = y_;
    c = 255;
  }

  void roll() {
  f = ((int)(Math.random()*6))+1;
  
  }
  
  void show() {
    fill(255);
    rect(x, y, 50, 50);    
    if(f == 1) {
      fill(0);
      ellipse(x + 25, y + 25, 10, 10);
    }
    else if(f == 2) {
      fill(255);
      rect(x, y, 50, 50);
      fill(0);
      ellipse(x + 25, y + 25, 10, 10);
    }
    else if(f == 3) {
      fill(255);
      rect(x, y, 50, 50);
      fill(0);
      ellipse(x + 25, y + 25, 10, 10);
    }
    else if(f == 4) {
      rect(x, y, 50, 50);
    }
    else if(f == 5) {
      rect(x, y, 50, 50);
    }
    else{
      rect(x, y, 50, 50);
    }
  }
}
