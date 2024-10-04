extends CharacterBody3D


@export var speed:float = -5
@export var rot_speed = 180
@export var bullet_scene:PackedScene
@export var bullet_spawn:Marker3D

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
	
	DebugDraw2D.set_text("Position:",position)
	DebugDraw2D.set_text("Global_Position:",global_position)
	DebugDraw2D.set_text("BasisX:",transform.basis.x)
	DebugDraw2D.set_text("BasisY:",transform.basis.y)
	DebugDraw2D.set_text("BasisZ:",transform.basis.z)
	
	DebugDraw2D.set_text("Global_BasisX:",global_transform.basis.x)
	DebugDraw2D.set_text("Global_BasisY:",global_transform.basis.y)
	DebugDraw2D.set_text("Global_BasisZ:",global_transform.basis.z)
	
	if Input.is_action_just_pressed("shoot"):
		var bullet = bullet_scene.instantiate()
		bullet.global_position = bullet_spawn.global_position
		bullet.global_rotation = bullet_spawn.global_rotation
		
		get_parent().add_child(bullet)
	
	pass
