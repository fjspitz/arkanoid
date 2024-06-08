extends CharacterBody2D

@export var speed: float

var direction = 0

func get_direction():
	direction = Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * speed
	#velocity.y = 0

func _physics_process(delta):
	get_direction()
	move_and_collide(velocity * delta)
