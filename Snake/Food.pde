class food {
  float xpos, ypos;
  
  food(){
    xpos = random(100,width - 100);
    ypos = random(100, height - 100);
  }
  
  void display(){
    fill(250,0,0);
    ellipse(xpos,ypos,17,17);
  }
  
  void reset(){
    xpos = random(100, width - 100);
    ypos = random(100, width - 100);
  }
}