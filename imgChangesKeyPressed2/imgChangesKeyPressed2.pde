PImage upImage;
PImage downImage;
PImage leftImage;
PImage rightImage;
PImage imageShown;

char arrow;

void setup () {
  size(1000,760);
  background(0);
  
  // load images 
  upImage = loadImage("up.png");
  downImage = loadImage("down.png");
  leftImage = loadImage("left.png");
  rightImage = loadImage("right.png");
}

void draw() {
  // animate images
  showRandomArrows();
  
  // control images
  //setKey();
}

void keyPressed() 
{ 
  if(key == 'w'){ 
    println("key w");
  }
  
  if(key == 's'){ 
    println("key s");
  }
  
  if(key == 'a'){ 
    println("key a");
  }
  
  if(key =='d'){ 
    println("key d");
  }
}

void setKey() {
  
  char[] keys = new char[4];
  keys[0] = 'w';  // Assign value to first element in the array
  keys[1] = 's'; // Assign value to second element in the array
  keys[2] = 'a';  // Assign value to third element in the arrayint[]
  keys[3] = 'd';  // Assign value to 4th element in the arrayint[]
  
  for (int i = 0; i < keys.length; i++) {
    key = keys[i];
    keyPressed();
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
  
  delay(200);
  
}