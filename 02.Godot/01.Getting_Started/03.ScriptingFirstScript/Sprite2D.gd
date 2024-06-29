extends Sprite2D

#func _init():
	#print("Hello, world!")

var speed = 400
var angular_speed = PI

# Basic, no user input
#func _process(delta):
	#rotation += angular_speed * delta
	#
	#var velocity = Vector2.UP.rotated(rotation) * speed
	#
	#position += velocity * delta

func _process(delta):
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1
		
	rotation += angular_speed * direction * delta
	
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP.rotated(rotation) * speed
	
	position += velocity * delta
