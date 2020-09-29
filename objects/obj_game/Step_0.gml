/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_enter)){
switch(room){
	case rm_start:
		room_goto(rm_game);
		break;
	
	case rm_win:
	case rm_gameover:
		game_restart();
		break;
	}
}

if(room == rm_game){
	//if (score >= 100){
	//	room_goto(rm_win);
	//	audio_play_sound(snd_win, 1, false);
	//	audio_stop_sound(msc_song)
	//}	
	if (lives <= 0){
		room_goto(rm_gameover);
		audio_play_sound(snd_loose, 1, false);
	}
}

//if(room == rm_gameover){
//highscore_add(obj_text_box.text, score);
//}

