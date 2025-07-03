
//draw the Energy bar
draw_set_color(#2dd65a);
//HARDCODED
draw_rectangle(energyBarLeft - 1, global.screenHeight - 3, energyBarRight, global.screenHeight - global.cell_size/2, false);
for(var i = 0; i < enBarForNumber * 2 + 1; i++){
	if (i != 0 && i != (enBarForNumber*2)){
			draw_sprite(energyBarGUI, 1, energyBarLeft + i * global.cell_size/2, global.screenHeight + 9);
	}
	else if (i == 0){
			draw_sprite(energyBarGUI, 0, energyBarLeft + i * global.cell_size/2, global.screenHeight + 9);
	}
	else{
			draw_sprite(energyBarGUI, 2, energyBarLeft + i * global.cell_size/2, global.screenHeight + 9);		
	}
}

draw_set_color(16777215);


//Draw the EPrompt
	if (keyboard_check(ord("E"))){
		draw_sprite_ext(EPromptSprt, 1, x - camera_get_view_x(view_camera[0]), y - camera_get_view_y(view_camera[0]) + global.cell_size/2, 1, ePromptSize, 0, image_blend, 1);		
	}
	else{
		draw_sprite_ext(EPromptSprt, 0, x - camera_get_view_x(view_camera[0]), y - camera_get_view_y(view_camera[0]) + global.cell_size/2, 1, ePromptSize, 0, image_blend, 1);
	}
	
	
//draw_text(global.screenWidth - 32, global.screenHeight - 32, floor(fps_real/10)*10);

//make UI smaller
if ((y - camera_get_view_y(view_camera[0])) < global.screenHeight/1.3){
	draw_set_alpha(0.8);
}
else{
	draw_set_alpha(0.3);
}


for (var i = 0; i < array_length(global.p1Inventory); i++){
		
	if (global.p1Selected == i){
		draw_sprite(InventorySlotSprt, 1, global.screenWidth/2 + i * slotDist - 60, camera_get_view_height(view_camera[0])-global.cell_size);
	}
	else{
		draw_sprite(InventorySlotSprt, 0, global.screenWidth/2 + i * slotDist - 60, camera_get_view_height(view_camera[0])-global.cell_size);
	}
	if (global.p1Inventory[i][0] != 0){
		draw_sprite(ItemSprite(global.p1Inventory[i][0]), 0, global.screenWidth/2 + i * slotDist - 60, camera_get_view_height(view_camera[0])-global.cell_size);
	}

}
for (var i = 0; i < global.p1MaxHealth; i++){
	if (global.p1Health > i){
		draw_sprite(HeartSprt, 0, global.screenWidth/16 + (1 + i) * global.cell_size, global.cell_size);
	}
	else{
		draw_sprite(HeartSprt, 1, global.screenWidth/16 + (1 + i) * global.cell_size, global.cell_size);
	}
}

if (global.bossActive){
	draw_rectangle(bossBarLeft - 1, 8, bossBarRight, 16, false);
}
 
 draw_set_alpha(1);