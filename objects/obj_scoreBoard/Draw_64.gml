var dx = 1050;
var dy = 50;

draw_set_font(Font1);
draw_set_halign(fa_right);
draw_text_color(dx-370,dy+6,$" {obj_robot.playerScore}",c_black, c_black, c_black, c_black, 1);
draw_set_halign(fa_left);
draw_text_color(-25,dy+6,$" {obj_penguin.playerScore}",c_black, c_black, c_black, c_black, 1);
draw_set_halign(fa_right);
draw_text_color(dx-365,dy,$" {obj_robot.playerScore}",c_dkgrey, c_dkgrey, c_aqua, c_aqua, 1);
draw_set_halign(fa_left);
draw_text_color(-20,dy,$" {obj_penguin.playerScore}",c_aqua, c_aqua, c_blue, c_blue, 1);

draw_set_halign(fa_middle);
draw_text_color(335,dy,$" {timer}",c_aqua, c_aqua, c_blue, c_blue, 1);
draw_text_color(335,dy+6,$" {timer}",c_black, c_black, c_dkgrey, c_dkgrey, 1);
