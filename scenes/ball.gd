extends CharacterBody2D

#var speed = Vector2(0, -250)
@export var speed: float

func _ready():
	velocity.x = 0
	velocity.y = -1
	velocity *= speed

func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		#velocity = velocity.bounce(collision_info.get_normal())
		var reflect = collision_info.get_remainder().bounce(collision_info.get_normal())
		velocity = velocity.bounce(collision_info.get_normal())
		move_and_collide(reflect)
