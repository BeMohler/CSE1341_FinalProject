/*int size = 100;
int squares;
square[][] board = new square[10][10];
int direction = 0; //round(random(4));
long move = 500;
long mTotal = 500;
int snakeLength = 1;
square[] snake = new square[snakeLength];
long time = 1000;
long interval = 1000;
int rand_1;
int rand_2;

void setup(){
  size(1000,1000);
  background(255);
  strokeWeight(1);
  for(int i = 0; i < 10; i++){
    for(int j =0; j < 10; j++){
       board[i][j] = new square(i * 100,j * 100);
       board[i][j].drawSquare();
    }  
  }
  rand_1 = round(random(10));
  rand_2 = round(random(10));
  //board[round(rand_1)][round(rand_2)].isCaught();
  print(direction);
}

void draw(){
  speed();
}

void slither(){
  if(direction == 0 && upDown(rand_1, rand_2) == true){
    board[rand_1 - 1][rand_2].isCaught();
  } else if(direction == 1){
  } else if(direction == 2){
  } else if(direction == 3){
  }
}
void speed(){
  if(millis() >= mTotal) {
    mTotal = mTotal + move;
    slither();
  }
}

boolean upDown(int i, int j){
  if(board[i+1][j].caught == false && board[i-1][j].caught == false){
    return false;
  } else {
    return true;
  }
}
*/

square test;
food food1;
int highScore;

void setup(){
  size(1000, 600);
  frameRate(14);
  test = new square();
  food1 = new food();
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  
  highScore = 0;
}



void draw(){
  background(250, 250, 250);
  
  test.move();
  test.display();
  food1.display();
  
  
  if( dist(food1.xpos, food1.ypos, test.xpos.get(0), test.ypos.get(0)) < test.sidelen ){
    food1.reset();
    test.addLink();
  }
  
  if(test.len > highScore){
    highScore= test.len;
  }
}


void keyPressed(){
  if(key == CODED){
    if(keyCode == LEFT){
      test.dir = "left";
    }
    if(keyCode == RIGHT){
      test.dir = "right";
    }
    if(keyCode == UP){
      test.dir = "up";
    }
    if(keyCode == DOWN){
      test.dir = "down";
    }
  }
}