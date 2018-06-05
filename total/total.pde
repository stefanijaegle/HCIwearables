int startTimeMs;

final int startDelayMs = 5000;
boolean atStartup = true;
boolean buttonPressed;
int buttonX, buttonY, buttonW, buttonH;

PImage upImage;
PImage downImage;
PImage leftImage;
PImage rightImage;
PImage imageShown;

int gameWidth = 240;
int gameHeight = 320;

int gameState = 0;

void setup () {
  size(240,320);
  background(0);
  
  buttonPressed = false;
  buttonW = 200;
  buttonH = 100;
  textSize(buttonH);
  buttonX = (width-buttonW)/2;
  buttonY = (height-buttonH)/2;
  
  // load images 
  upImage = loadImage("up.png");
  downImage = loadImage("down.png");
  leftImage = loadImage("left.png");
  rightImage = loadImage("right.png");
}

void draw() {
  switch(gameState) {
     case 0:
       startScreen();
       break;
     case 1:
       countDown();
       break;      
     case 2:
       showRandomArrows();
       break;
  }
}

void startScreen() {
  // show button
  fill(255);
  rect(buttonX, buttonY, buttonW, buttonH);
  fill(0);
  textSize(50);
  text("START", buttonX+10, buttonY+buttonH-10);
}

void mousePressed() {
  if (mouseX > buttonX && mouseX < buttonX+buttonW && mouseY > buttonY && mouseY < buttonY+buttonH) {
    gameState = 1;
  }
}

void countDown() {
   // The time since the program has started
  int curTimeMs = millis();
  
  // The remaining time in the startup period
  int counter = startDelayMs - (curTimeMs - startTimeMs);
  
  // run timer
  runTimer(counter);
  
}

void runTimer(int remainingTimeMs){
  background(50);
  textSize(100);
  fill(0);
  textAlign(CENTER,CENTER);
  // Show the remaining time, in seconds;
  // show n when there are n or fewer seconds remaining. 
  text(ceil(remainingTimeMs/1000.0), gameWidth/2, gameHeight/2);
  
  // change game stage after timer runs out
  if(remainingTimeMs < 0){
    gameState = 2;  
  }
  
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
  
  delay(2000);
  
}