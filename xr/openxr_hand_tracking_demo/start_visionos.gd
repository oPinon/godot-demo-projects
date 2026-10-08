extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var interface = XRServer.find_interface("visionOS")
	interface.initialize()
	var viewport: Viewport = get_viewport()
	viewport.use_xr = true
	viewport.use_hdr_2d = true
	viewport.vrs_mode = Viewport.VRS_XR
