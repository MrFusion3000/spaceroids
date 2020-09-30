/// @description Game texts

switch(room){
	case rm_game:
	draw_text(20,20, "SCORE: " +string(score));
	draw_text(20,40, "LIVES: " +string(lives));
	break;
	
	case rm_start:
	draw_set_halign(fa_center);
	var c = c_yellow;
	draw_text(
	room_width/2, 5, 
	"HiGhScoRe: " + string(highscore_name(1)) + " - " + string(highscore_value(1))
	);
	draw_text_transformed_color(
	room_width/2, 15, "SpAceRoiDs", 
	3, 3, 0, c, c, c, c, 1
	);
	draw_text(
	room_width/2, 70,
	@"UP:move
LEFT/RIGHT: change direction
SPACE: shoot

>> PRESS ENTER TO START <<
");
	
	draw_set_halign(fa_left);
	break;
	
	case rm_gameover:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
		room_width/2, 150, "GAME OVER!", 
		3, 3, 0, c, c, c, c, 1
		);
		draw_text(
		room_width/2, 250,
		"FINAL SCORE: "+ string(score)
		);
		draw_text(
		room_width/2, 300,
		"ENTER NAME:"
		);
	
		draw_text(
		room_width/2, 400,
		">> PRESS ENTER TO RESTART <<");
		draw_set_halign(fa_left);
		
		//draw_highscore( 150, 420, 450, 500 );

	break;
	
}

draw_set_font (fnt_text);