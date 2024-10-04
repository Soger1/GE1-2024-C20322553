extends CharacterBody3D


@export var speed:float = -1
@export var rot_speed = 180.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	
	# position.z += speed * delta
	# global_position.z += speed * delta
	
	var f = Input.get_axis("move_back", "move_forward")
	
	var v = Vector3()
	
	v = global_transform.basis.z
	
	velocity = v * speed * f
	
	move_and_slide()
	
	var r = Input.get_axis("turn_right", "turn_left")
	
	rotate_y(deg_to_rad(rot_speed) * r * delta)
	# rotate_y()
	# rotate_y(deg_to_rad(rot_speed) * delta)
	# rotate_x(deg_to_rad(rot_speed) * delta)
	
	pass
