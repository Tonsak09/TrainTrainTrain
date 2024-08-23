extends Node2D

var isMoving : bool

var dir : Vector2
var speed : float 

var dissFX = preload("res://Prefabs/Bullets/Bullet_Diss_FX.tscn")

# Begins the firing process of the bullet 
func Fire(_speed : float, _dir : Vector2):
	speed = _speed
	dir = _dir
	isMoving = true 

func _process(delta):
	if isMoving:
		position += dir * speed * delta

func Cleanup():
	var instance = dissFX.instantiate()
	get_tree().root.get_child(0).add_child(instance)
	instance.global_position = global_position
	queue_free()

