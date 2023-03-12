/// @description Insert description here

if (place_meeting(x, y, obj_player)) {
	if (myTextbox == noone) {
		myTextbox = instance_create_layer(x, y, "Texts", obj_textbox);
	} else {
		if (myTextbox != noone) {
			instance_destroy(myTextbox);
			myTextbox = noone;
		}
	}
}
