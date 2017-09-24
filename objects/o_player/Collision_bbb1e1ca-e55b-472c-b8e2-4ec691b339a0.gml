keys += 1;

//STOPS DISPLAYING PICK UP TEXT
with(o_text) {
	keyText = false;
}

//DESTROYS KEY
with(o_key) {
	instance_destroy();
}