int startTimeMs;
// The time until the game starts, in milliseconds
// (easy to convert to seconds, sec = ms/1000)
final int startDelayMs = 5000;
boolean atStartup = true;
boolean buttonPressed;
int buttonX, buttonY, buttonW, buttonH;
 
int gameWidth = 1200;
int gameHeight = 600;

int gameState = 0;
 
void setup(){
  size(1200, 600);
  
  buttonPressed = false;
   buttonW = 335;
  buttonH = 100;
  textSize(buttonH);
  buttonX = (width-buttonW)/2;
  buttonY = (height-buttonH)/2;
  //startTimeMs = millis();
  // Current time, in milliseconds
 // startTimeMs = millis();
}
 
void draw(){
  
  switch(gameState) {
     case 0:
       startGame();
       break;
     case 1:
       countDown();
       break;      
     case 2:
       stageGo();
       break;
  }

}
 
void startGame() {
  
  // show button
  fill(255);
  rect(buttonX, buttonY, buttonW, buttonH);
  fill(0);
  text("START", buttonX+10, buttonY+buttonH-10);
}

void countDown() {
   // The current time, in milliseconds
  int curTimeMs = millis();
  // The remaining time in the startup period
  int startupTimeRemainingMs = startDelayMs - (curTimeMs - startTimeMs);
  
  // run timer
  runTimer(startupTimeRemainingMs);
  
  // ??
  atStartup = startupTimeRemainingMs > 0;
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

void mousePressed() {
  if (mouseX > buttonX && mouseX < buttonX+buttonW && mouseY > buttonY && mouseY < buttonY+buttonH) {
    gameState = 1;
  }
}

void stageGo(){
  background(240);
  fill(0);
  textAlign(CENTER,CENTER);
  text("GO!", gameWidth/2, gameHeight/2);
}
