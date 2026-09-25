extends Sprite2D

var rotation_speed: float = 180
var speed: float = 100

#func _physics_process(delta: float) -> void:
	#rotation_degrees += delta * rotation_speed

func _process(delta: float):
	if Input.is_action_pressed("ui_right"):
		position.x += delta * speed
	if Input.is_action_pressed("ui_left"):
		position.x -= delta * speed
	if Input.is_action_pressed("ui_up"):
		position.y -= delta * speed
	if Input.is_action_pressed("ui_down"):
		position.y += delta * speed
