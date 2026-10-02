extends CharacterBody2D

#var rotation_speed: float = 180
var speed: float = 120
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

#func _physics_process(delta: float) -> void:
	#rotation_degrees += delta * rotation_speed

func _process(delta: float):
	sprite.play("idle")
	
	var dir = Vector2()
	if Input.is_action_pressed("ui_right"):
		dir.x += 1
	if Input.is_action_pressed("ui_left"):
		dir.x -= 1
	if Input.is_action_pressed("ui_up"):
		dir.y -= 1
	if Input.is_action_pressed("ui_down"):
		dir.y += 1
	position += dir.normalized() * speed * delta
