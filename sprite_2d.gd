extends Sprite2D


const SPEED = 600.0
var velocity = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction := Input.get_axis("Left", "Right")
	if direction:
		velocity = move_toward(velocity, direction * SPEED, SPEED/10)
	else:
		velocity = move_toward(velocity, 0, SPEED/10)
	rotation_degrees+=velocity/31.4
