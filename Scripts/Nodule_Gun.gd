extends Node2D

@export var director : Node2D
@export var spawnPoint : Node2D

@export var bulletSpeed : float 

var bulletAsset = preload("res://Prefabs/Bullets/Bullet_Prototype.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	#print_debug(director.dir)

func SpawnBullet():
	var instance = bulletAsset.instantiate()
	get_tree().root.get_child(0).add_child(instance)
	instance.global_position = spawnPoint.global_position
	instance.Fire(bulletSpeed, director.dir.normalized())
	#add_child(instance)
