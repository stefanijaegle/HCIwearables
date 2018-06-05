// Object's variables:
static int x, y;     // positions
static int w, h;     // dimensions
static int ww, hh;   // radii
static int gw, gh;   // canvas - radii
boolean ballOrBox;   // current shape

// Object's constants:
final static byte  SPX  = 30, SPY = 20; // speed movement
final static byte  BOLD = 4;            // border thickness
final static color COLOUR = #0000FF;    // #blue

// General constants:
final static byte  FPS = 60;
final static color BG  = #FFFF00;       // #yellow

// General boolean variables:
static boolean north, south, west, east;

static final void initVars(int wdt, int hgt) {
  x = wdt>>1;    // center of screen 
  y = hgt>>1;

  w = wdt/10;    // 1/10th size of screen
  h = hgt/10;

  ww = w>>1;     // distances from center (radii)
  hh = h>>1;

  gw = wdt - ww; // diff. of (canvas dimensions - obj. radii)
  gh = hgt - hh;
}

void setup() {
  size(800, 600);
  smooth();            // turn on drawing smoothness
  frameRate(FPS);      // set frames / second

  rectMode(CENTER);    // coordinates are relative from center
  ellipseMode(CENTER);

  fill(COLOUR);        // object's paint color
  stroke(0);           // #black
  strokeWeight(BOLD);  // object's border thickness

  initVars(width, height);
}

void draw() {
  background(BG);

  moveObject();
  confineToEdges();
  displayObject();
}

void keyPressed() {
  final int k = keyCode;

  if (k == ' ' | k == ENTER | k == RETURN)
    ballOrBox = !ballOrBox;

  else setDirection(k, true);
}

void keyReleased() {
  setDirection(keyCode, false);
}

static final void setDirection(int k, boolean decision) {
  if      (k == UP    | k == 'W')   north = decision;
  else if (k == DOWN  | k == 'S')   south = decision;
  else if (k == LEFT  | k == 'A')   west  = decision;
  else if (k == RIGHT | k == 'D')   east  = decision;
}

static final void moveObject() {
  x += (east?  SPX : 0) - (west?  SPX : 0);
  y += (south? SPY : 0) - (north? SPY : 0);
}

static final void confineToEdges() {
  x = constrain(x, ww, gw);
  y = constrain(y, hh, gh);
}

void displayObject() {
  if (ballOrBox)    ellipse(x, y, w, h);
  else              rect(x, y, w, h);
}
