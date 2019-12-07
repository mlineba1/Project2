/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0DABC5FD
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)$(13_10)// Inherit the parent event$(13_10)event_inherited();$(13_10)lives+=1;$(13_10)instance_destroy();$(13_10)score += 75;$(13_10)"
/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
lives+=1;
instance_destroy();
score += 75;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 374E1B6F
/// @DnDArgument : "soundid" "snd_powerup"
/// @DnDSaveInfo : "soundid" "064acadf-0f77-4abb-a25d-1a9c1f09cb8a"
audio_play_sound(snd_powerup, 0, 0);