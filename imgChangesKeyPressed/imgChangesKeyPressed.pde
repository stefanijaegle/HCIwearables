PImage d;
boolean isLoaded = false;
void setup () {
size(1000,760);
background(0);
}

void keyPressed() 
{ 
  
  
if(key=='w'){ 
  
  if(isLoaded) {
    isLoaded = false;
  } else {
    isLoaded = true;
  }
  
d = loadImage("up.png");
isLoaded = true; 
} 
if(key=='s'){ 
d = loadImage("down.png");
isLoaded = true; 
}
if(key=='a'){ 
d = loadImage("left.png");
isLoaded = true; 
}
if(key=='d'){ 
d = loadImage("right.png");
isLoaded = true; 
}
}
//void keyReleased(){
 //background (0,0,0);
 
void draw() {
  background (0);
  
if(isLoaded)image(d, 0, 0);
}
