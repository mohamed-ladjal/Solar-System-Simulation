extends CSGSphere3D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	rotate_y(0.001);
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_neptuneCam2_pressed():
	$buttonPressed.play();
	$neptuneCam.current=true;


func _on_uranusCam2_pressed():
	$buttonPressed.play();
	$uranusCam.current=true;


func _on_saturnCam2_pressed():
	$buttonPressed.play();
	$saturnCam.current=true;

func _on_jupiterCam2_pressed():
	$buttonPressed.play();
	$jupiterCam.current=true;

func _on_MarsCam_pressed():
	$buttonPressed.play();
	$marsCam.current=true;

func _on_venusCam2_pressed():
	$buttonPressed.play();
	$venusCam.current=true;

func _on_mercuryCam2_pressed():
	$buttonPressed.play();
	$mercuryCam.current=true;

func _on_EarthCam_pressed():
	$buttonPressed.play();
	$earthCam.current=true;
