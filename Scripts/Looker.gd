extends Sprite2D

@export var turnSpeed : float  
var dir : Vector2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	dir = get_global_mouse_position() - self.global_position
	var angle = dir.angle()
	var r = self.global_rotation
	self.global_rotation = lerp_angle(r,angle,turnSpeed * delta)
