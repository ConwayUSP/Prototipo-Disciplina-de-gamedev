extends Sprite2D

var rotation_speed = 180

func _process(delta: float) -> void:
	rotation_degrees += delta * rotation_speed
