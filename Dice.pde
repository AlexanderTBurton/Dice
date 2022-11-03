int n = 0;
int sum = 0;
int numRows = 1; //input value here for number of rows
int numCols = 4; //input value here for number of columns
float average = 0;

void settings() {
  size(numCols*60+10,numRows*60+60);
}

void setup() {
  noLoop();
  //Die aDie = new Die(); idk why this exists
}

void draw(){
  sum = 0;
  average = 0;
  background(0,200,0);
  for(int y = 10; y < numRows*60; y = y += 60) {
    for (int x = 10; x < numCols*60; x = x += 60) {
      Die aDie = new Die (x, y);
      aDie.roll();
      aDie.show();
    }
  }
  if (numCols <= 1) {
    textSize(10);
  }
  else if (numCols <= 2) {
    textSize(20);
  }
  else {
    textSize(25);
  }
  textAlign(CENTER);
  text("Sum: " + sum,width/2,height-35);
  text("Average: " + average,width/2,height-15);
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
      n = 1;
    }
    else if(f == 2) {
      fill(0);
      ellipse(x + 15, y + 15, 10, 10);
      ellipse(x + 35, y + 35, 10, 10);
      n = 2;
    }
    else if(f == 3) {
      fill(0);
      ellipse(x + 40, y + 10, 10, 10);
      ellipse(x + 25, y + 25, 10, 10);
      ellipse(x + 10, y + 40, 10, 10);
      n = 3;
    }
    else if(f == 4) {
      fill(0);
      ellipse(x + 15, y + 15, 10, 10);
      ellipse(x + 15, y + 35, 10, 10);
      ellipse(x + 35, y + 15, 10, 10);
      ellipse(x + 35, y + 35, 10, 10);
      n = 4;
    }
    else if(f == 5) {
      fill(0);
      ellipse(x + 10, y + 10, 10, 10);
      ellipse(x + 10, y + 40, 10, 10);
      ellipse(x + 40, y + 10, 10, 10);
      ellipse(x + 40, y + 40, 10, 10);
      ellipse(x + 25, y + 25, 10, 10);
      n = 5;
    }
    else{
      fill(0);
      ellipse(x + 15, y + 10, 10, 10);
      ellipse(x + 35, y + 10, 10, 10);
      ellipse(x + 15, y + 25, 10, 10);
      ellipse(x + 35, y + 25, 10, 10);
      ellipse(x + 15, y + 40, 10, 10);
      ellipse(x + 35, y + 40, 10, 10);
      n = 6;
    }
    sum += n;
    average = (float)sum/(numRows*numCols);
  }
}
