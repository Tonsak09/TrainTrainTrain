extends Node2D

@export var renderer : Sprite2D
@export var texB : Texture

func SwapText():
	renderer.texture = texB

func NoFXCleanup():
	queue_free()
