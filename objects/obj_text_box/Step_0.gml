/// @description Handle Keypress/Input

if (string_length(global.name) < 5){
global.name = keyboard_string;
} else{
	keyboard_string = global.name;
}



