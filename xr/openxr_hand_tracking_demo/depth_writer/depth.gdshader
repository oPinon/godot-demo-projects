shader_type spatial;
render_mode unshaded, fog_disabled, depth_draw_always, blend_add;

#define DEPTH_BIAS 0.00000001

void vertex() {
	POSITION = vec4(VERTEX.xy, DEPTH_BIAS, 1.0);
}

void fragment() {
	ALBEDO = vec3(0,0,0);
	ALPHA = 1.0;
}
