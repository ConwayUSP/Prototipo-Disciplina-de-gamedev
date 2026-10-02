extends CharacterBody2D

var speed: float = 120
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D


func _process(delta: float):
	sprite.play("idle") # NOVO
	
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
