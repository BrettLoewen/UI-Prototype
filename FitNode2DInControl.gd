@tool
extends Control

@export var animatedSprite: AnimatedSprite2D
@export var animName: String

func _process(_delta):
	# Get the texture for the 0th frame of the animation
	var animatedSpriteSize = animatedSprite.sprite_frames.get_frame_texture(animName, 0).get_size()
	
	# Update the scale of the animated sprite so it matches the scale of the parent (this node)
	# Currently it scales according to the x axis, to switch to y simply switch vector components are used
	var sx = size.x / animatedSpriteSize.x
	animatedSprite.scale = Vector2(sx, sx)
	
	# Update the position to be centered within the parent
	animatedSprite.position = Vector2(size.x / 2, size.y / 2)
