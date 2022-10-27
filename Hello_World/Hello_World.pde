//Global Variables
int appWidth, appHeight;
float centerWidth, centerHeight, xStart, yStart, widthRect, heightRect;
color black=#000000, white=#FFFFFF, green=#00FC45,yellow=#FCFC00;
//
void setup() {
  //Declare Display Geometry: square, landscape, portrait
  size(700, 400); //Use size for debugging
  //fullScreen(); //Use fullScreen for easy deployment
  appWidth = width;
  appHeight = height;
  //
  //Concatenation
  println("\t\t\tWidth="+width, "\tHeight="+height); //key variables
  println("Display Monitor:", "\twidth="+displayWidth, "& height="+displayHeight);
  //
  //Ternary Operator
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
  String orientation = ( appWidth >= appHeight ) ? ls : p;
  println (DO, orientation);
  //
  //If ORIENTATION is wrong ... feedback to change it
  if ( orientation==p ) println(instruct);
  //
  //Fit CANVAS into Display Monitor
  if ( appWidth > displayWidth ) appWidth = 0; //CANVAS-width will not fit
  if ( appHeight > displayHeight ) appHeight = 0; //CANVAS-height will not fit
  if ( appWidth != 0 && appHeight != 0 ) print("Display Geoemtry is Good to Go.");
  if ( appWidth == 0 || appHeight == 0 ) println("STOP, is broken");

  
 //Population
 centerWidth = width * 1/2;
 centerHeight = height * 1/2;
 xStart = centerWidth - (width * 1/4);
 yStart = centerHeight - (height * 1/4);
 widthRect = height * 1/2;
 heightRect = height * 1/2;
 //
 //Population
 centerWidth = appWidth * 1/2;
 centerHeight = appHeight * 1/2;
 xStart = centerWidth - ( appWidth * 1/4);
 yStart = centerHeight - (appHeight * 1/4 );
 widthRect = appWidth * 1/2;
 heightRect = appHeight * 1/2;
 thick = appWidth * 1/70;
 thin = appWidth * 1/140
 } //End setup
//
void draw() {
  background(255); //Gray Scale 0-255
  //random(a,b)
 background( color( random(0, 255)), random(255), random(255)); // Grey Scale, 
 //nightmode
 background (black);
 //
 strokeWeight(thick); //noStroke()
 stroke(yellow);
 fill(green);
 rect(xStart, yStart, widthRect, heightRect);
 fill(white); //Reset default
 stroke(black);//Reset default
 strokeWeight(1);//Reset default
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
// End Main Program
