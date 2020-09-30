/// @description Show highscore
if(room == rm_start){
if (!instance_exists(obj_leaderboard)) {
	instance_create_layer(200,200,"Instances",obj_leaderboard);
	}
}