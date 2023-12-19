extends CharacterBody2D

@export var movement_speed:float = 40;

func _physics_process(delta):
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1; 
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1;
	if Input.is_action_pressed('ui_right'):
		velocity.x += 1;
	if Input.is_action_pressed('ui_left'):
		velocity.x -= 1;	
	
	print(velocity);
	
	velocity = velocity.normalized() * movement_speed;
	position += velocity * delta;
	move_and_slide();

