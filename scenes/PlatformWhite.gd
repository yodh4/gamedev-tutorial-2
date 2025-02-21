extends Node2D

@export var speed = 500.0

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Ship ready to take off")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_up"):
		move_local_y(-speed * delta, false)
	
	if Input.is_action_pressed("move_down"):
		move_local_y(speed * delta, false)
		
	if Input.is_action_pressed("move_left"):
		move_local_x(-speed * delta, false)
	
	if Input.is_action_pressed("move_right"):
		move_local_x(speed * delta, false)
