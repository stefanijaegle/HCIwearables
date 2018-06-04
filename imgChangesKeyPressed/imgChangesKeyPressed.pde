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
}
void draw() {
if(isLoaded)image(d, 0, 0);
}
