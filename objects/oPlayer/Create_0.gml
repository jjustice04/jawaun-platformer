/// @description Create Variable
// You can write your code in this editor

//global variables
global.coins =0;
global.points = 0;

hp =5;
iFrames = false;
//xspeed is how many pixels the player will move each frame
xSpeed = 4;

//what direction the player is moving. 1 = to the right, -1 = to the left, 0 = not moving
xDirection = 0;

//multiply speed * direction
xVector = xSpeed * xDirection;

//gravity
grv = .45;
jumpForce = -14;

yVector = 0;
