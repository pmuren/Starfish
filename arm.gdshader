shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	float alpha = step(distance(UV, vec2(0.5, 0.5)), 0.5);
	COLOR = vec4(UV.y, UV.x*0.75, UV.x, alpha);
	// Called for every pixel the material is visible on.
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
