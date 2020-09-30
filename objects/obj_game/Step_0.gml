/// @description Room changes

if(keyboard_check_pressed(vk_enter)){
switch(room){
	case rm_start:
		room_goto(rm_game);
		break;	
	case rm_gameover:
		highscore_add(global.name, score);
		game_restart();
		break;
	}
}

if(room == rm_game){
	if (lives <= 0){
		room_goto(rm_gameover);
		audio_play_sound(snd_loose, 1, false);
	}
}

//if(room == rm_gameover){
//highscore_add(obj_text_box.text, score);
//}

