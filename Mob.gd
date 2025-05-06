extends RigidBody2D

@export var min_speed := 150
@export var max_speed := 250

func _ready():
	$AnimatedSprite2D.play()
	var mob_types = $AnimatedSprite2D.sprite_frames.get_animation_names()
	$AnimatedSprite2D.animation = mob_types[randi() % mob_types.size()]

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
