extends Node3D

@export var brick_scene: PackedScene

@export var row = 10
@export var col = 25


# Called when the node enters the scene tree for the first time.
func _ready() -> void:	
	
	for row in range(row):
		for col in range(col):
			var brick = brick_scene.instantiate()
			var pos = Vector3(cos(col)*PI, row, sin(col)*PI)
			brick.position = pos
			
			
			add_child(brick)
			
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
