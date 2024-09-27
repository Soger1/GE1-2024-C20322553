extends MeshInstance3D

var r = Color(255,0,0)
var b = Color(0,255,0)
var g = Color(0,0,255)

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var mat = get_active_material(0)
	mat.albedo_color = Color(rng.randi_range(0,255),rng.randi_range(0,255),rng.randi_range(0,255))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var mat = get_active_material(0)
	mat.albedo_color = Color(rng.randi_range(19,200),rng.randi_range(0,200),rng.randi_range(0,200))
	pass
