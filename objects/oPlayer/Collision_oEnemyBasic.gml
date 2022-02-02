/// @description Insert description here
// You can write your code in this editor

//check to se if oPlayer is above oEnemy
if(y<=other.y -other.sprite_height*.9)
{
	instance_destroy(other);

}

else
{
	room_restart();
}