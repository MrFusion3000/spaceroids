/// @description Handle Keypress/Input
if(keyboard_check(vk_anykey) and string_length(text) < 6){
text = text+string(keyboard_string);
keyboard_string ="";
}

if(keyboard_check(vk_backspace) and !keyboard_check_pressed(vk_backspace) and delete_timer = 2){
text = string_delete(text, string_length(text), 1);
delete_timer = 0;
keyboard_string = "";
}

if(keyboard_check_pressed(vk_backspace)){
text = string_delete(text,string_length(text),1);
keyboard_string ="";
delete_timer = -4;
}

//Handle Timer Update
if(delete_timer !=2){
delete_timer ++;	
}

if(keyboard_check(vk_enter)){
	highscore_add(text, score);	
}