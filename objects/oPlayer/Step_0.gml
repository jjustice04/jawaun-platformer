/// @description Player Movement
// You can write your code in this editor

//if key is pressed the right = 1, otherwise right = 0 
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);

jump = keyboard_check_pressed(vk_space);

xDirection = right - left;

xVector = xSpeed * xDirection;
yVector = yVector + grv;

//check to see if we move xVector pixels (4),
//does this collide with a wall?
//If it does collide, do not move all 4 pixels.
if place_meeting(x + xVector, y, oWall)
	{
		//as long as the next pixel is empty, move there
		//! means "not"
		while (!place_meeting(x + xDirection, y, oWall))
		{
			//mover one pixel
			x = x + xDirection;
		}
		//make sure xVector won't move us
		xVector = 0;
	}
		
x = x + xVector;


if place_meeting(x, y+ yVector, oWall)
	{
		//as long as the next pixel is empty, move there
		//! means "not"
		while (!place_meeting(x, y+sign(yVector), oWall))
		{
			//mover one pixel
			//if yVector is positive then sign(yVector) = 1
			//if vector is negative then sign(yVector) = -1
			y = y+sign(yVector);
		}
		//make sure xVector won't move us
		yVector = 0;
	}
y = y + yVector;

//to jump we need to check two things
//first check to see if the pixel below us is ground
//second, check to see if the jump button was presed

if (place_meeting(x, y+1, oWall) and (jump))
{
		yVector = jumpForce;
}

//die in a pit
if (y >= room_height)
{
	PlayerDeath()();
}