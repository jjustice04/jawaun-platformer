// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerHurt()
{
	if (!iFrames)
	{
		iFrames = true;
		hp--;
		if (hp<1)
		{
			PlayerDeath()
		}
	}
}


function PlayerDeath()
{
	//in hud creat global.lives = 3
	//global.lives-=lives;
	//if global.lives >0
room_restart();
}