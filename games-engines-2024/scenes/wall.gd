extends Node3D

@export var brick_scene:PackedScene
@export var rows = 100
@export var cols = 5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for row in range(rows):
		for col in range(cols):
			var brick = brick_scene.instantiate()
			var pos = Vector3(col, row, 0)
			brick.position = pos
			var m = StandardMaterial3D.new()
			var h = ((row * col) + col) / (float)(rows * col)
			m.albedo_color = Color.from_hsv(h,1,1)
			var mesh:MeshInstance3D = brick.get_node("MeshInstance3D")
			mesh.set_surface_override_material(0,m)
			add_child(brick)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass