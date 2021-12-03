/*    CS171 Project
Bartosz "Bartek" Kowal
Title: Interactive Trigonometrical Animation
Due date: 18th December 2020
Last edit: 15/12/2020 18:33
*/

int balls = 2; 
//amount of balls on screen at one time
int size = 12;
//size of individual balls
float change = PI/balls;;
//offset of balls in relation to the previous ball.
float velocity = 0.03;
//speed of all balls
float amplitude = 150;
//size of area where balls can appear
float angle = 0, theta = 0, x = 0, g = 0;
//math variables

void setup()     { 
//setup the screen
  size(800,800); } 
// 800 pixels by 800 pixels
void draw() {
  int a = (int)(400+150*cos(angle));
  int b = (int)(400+150*sin(angle));
//"a" and "b" used as x,y for  circular motion
  int j = 0; 
/*this declaration must be inside void draw
because it is used in a loop later */
  angle += velocity; 
//velocity is continuosly added onto angle (for later use) 
  

  background(255); 
//basic background colour 
  pushStyle(); 
//acts like pushMatrix(), but for styles
  noFill(); 
//makes the fill = none
  stroke(255,200,200); 
//colour of stroke
  strokeWeight(2);
//how thick the stroke is
  ellipse(width/2, height/2, (2*amplitude), (2*amplitude));
//draw an ellipse at centre, with double the amplitude of the animation
  popStyle(); 
// acts like popMatrix(), but for styles

if (keyPressed) {
    if (key == '1') { fill(255,0,0); } //RED
    if (key == '2') { fill(255,125,0); } //ORANGE
    if (key == '3') { fill(255,255,0); } //YELLOW
    if (key == '4') { fill(0,255,0); } //GREEN
    if (key == '5') { fill(0,255,255); } //CYAN
    if (key == '6') { fill(0,0,255); } //BLUE
    if (key == '7') { fill(125,0,255); } //VIOLET
    if (key == '8') { fill(255,0,255); } //MAGENTA
    if (key == '9') { fill(255); } //WHITE
    if (key == '0') { fill(0); } //BLACK
  } 

  for(int r = 1; r <= balls; r++)  {
//basic for loop which multiplies the rotation code each time it runs
    if (j < balls)  { 
//while "j" value is less than "balls", run the code under
    x = (amplitude*cos(angle+(j)*change)); 
/* declare "x", with "j" within the math in order to update 
the "change" value by muliplying it by "j" */
    
  pushMatrix(); 
//isolate the next code so it has no effect on anything else
    translate(width/2,height/2); 
//translate to the middle of the screen
    rotate(r*(PI/balls)); 
//"r" variable multiplying the rotation value
    stroke(255, 0, 0);
    line(0,0,x,0); 
//line connecting the drawn ball to the circle
    stroke(255,0,0);
    ellipse(x,0,size,size); 
//draw an ellipse with "x" value and "size" variable
    j++; 
//updated "j" in order to draw more circles
  popMatrix();
//close the matrix
    }   } 
    
    if (keyPressed)  {
    if (key == 61)  {  balls++;  }
//the PLUS key adds balls
    if (key == 45)  {  balls--;  }  
//the MINUS key removes balls
    if (key == ENTER)  { change = PI/balls;  }
//the offset change between balls is PI (3.14) divided by the amount of balls 
    if (key == BACKSPACE)  { balls = 2; change = 0; velocity = 0.03; }
/*reseting the animation sets the amount of balls to the default value of 2 and 
puts the offset change between the balls to 0 */
    if (key == 46)  { velocity = velocity + 0.001; }
//the "." key adds speed
    if (key == 44)  { velocity = velocity - 0.001; }
// the "," key removes speed
    }
    
  if (balls == 2) 
//only when there are 2 balls displayed, execute the lower code
    {
      pushStyle();
        fill(200,200,255); 
        stroke(255,100,100);
        strokeWeight(1);
        ellipse(b, a, 20, 20); 
//draws a orbiting ball on the circumference
      popStyle();
    }
    
  if (balls < 0) { balls = 0; }
//to make sure the value of balls does not go below 0
  if (balls > 300) { balls = 300; }
//to make sure the value of balls does not go above 300
  if (velocity < -0.3) { velocity = -0.3; }
//to make sure the value of velocity does not go below -0.3
  if (velocity > .3) { velocity = .3; }
//to make sure the value of velocity does not go above 0.3

  
//text
pushStyle();
  fill(255,100,100);
  textSize(15);
  text("Press '+' key to add balls.", 10, 10, 250, 100);
  text("Press '-' key to remove balls.", 10, 35, 250, 100);
  text("Press '.' key to increase speed.", 10, 60, 250, 100);
  text("Press ',' key to decrease speed.", 10, 85, 250, 100);
  text("Press 'ENTER' key to arrange balls.", 10, 110, 250, 100);
  text("Press 'BACKSPACE' key to reset.", 10, 135, 250, 100);
  text("Amount of balls: ", 10, 160+30, 250, 100);
  text(balls,135,175+30);
  text("Speed of balls: ", 10, 185+30, 250, 100);
  text(velocity, 120, 200+30);
  text("Cycle through '0-9' for colour options.", 10, 775,500,100);
  text("Press 'ESC' to exit.", 655, 775, 500, 100);
popStyle();
} 
