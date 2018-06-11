PImage upImage;
PImage downImage;
PImage leftImage;
PImage rightImage;
PImage imageShown;
int gameState = 0;

char arrow;

void setup () {
  size(240,320);
  background(0);
  
  // load images 
  upImage = loadImage("up.png");
  downImage = loadImage("down.png");
  leftImage = loadImage("left.png");
  rightImage = loadImage("right.png");

}

void draw() {
  
  switch(gameState) {
    case 0:
      showRandomArrows();
      break;
    //case 1:
    //  startGame();
    //case 2:
    //  startRunning();      
    //case 3: 
    //  gameOver();
  }
  
  // control images
  //setKey();
}

void startGame() {
  
  
}

void showRandomArrows() {
  
  // reset background
  background(0); 
  
  println(imageShown);
  
  // choose random image
  switch(parseInt(random(1,5))) {
    case 1: 
      imageShown = upImage;
      break;
    case 2:
      imageShown = downImage;
      break;
    case 3:
      imageShown = rightImage;
      break;
    case 4:
      imageShown = leftImage;
      break;
  }
  
  // render image
  image(imageShown, 0, 0);
  
  // Set a delay
  delay(2000);
  
}
