extends Node3D


var camrot_h=0
var camrot_v=0
var cam_v_max = 75
var cam_v_min = -55
var h_sensitivity = 0.2
var v_sensitivity = 0.2
var h_acceleration = 10
var v_acceleration = 10

func _ready():
	$h/v/earthCam.add_exception(get_parent())
func _input(event):
	camrot_h += -event.relative.x * h_sensitivity
	camrot_v += event.relative.y * v_sensitivity
		
func _physics_process(delta):
	camrot_v = clamp(camrot_v, cam_v_min, cam_v_max)
	var rot_speed_multiplier = 0.15 #reduce this to make the rotation radius larger

	$h.rotation_degrees.y = lerp($h.rotation_degrees.y, camrot_h, delta * h_acceleration)
	
	$h/v.rotation_degrees.x = lerp($h/v.rotation_degrees.x, camrot_v, delta * v_acceleration)
