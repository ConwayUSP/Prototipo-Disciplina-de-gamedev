extends Sprite2D

var rotation_speed: float = 180
var speed: float = 100

#func _physics_process(delta: float) -> void:
	#rotation_degrees += delta * rotation_speed

func _process(delta: float):
	var dir = Vector2(0, 0)
	if Input.is_action_pressed("ui_right"):
		dir.x += 1
	if Input.is_action_pressed("ui_left"):
		dir.x -= 1
	if Input.is_action_pressed("ui_up"):
		dir.y -= 1
	if Input.is_action_pressed("ui_down"):
		dir.y += 1
	
	position += dir.normalized() * delta * speed
