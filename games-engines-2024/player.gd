extends MeshInstance3D

@export var speed:float = -5
@export var rot_speed:float = 1
var direction = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var f = Input.get_axis("move_backwards", "move_forward")
	var d = Input.get_axis("rotate_right", "rotate_left")
	translate(Vector3(0 ,0 ,f * delta * speed))
	
	rotate_y(d*delta*rot_speed)
	
	pass
