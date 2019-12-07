/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3EB48931
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)powerup1 = true;$(13_10)score+=100;$(13_10)instance_destroy();$(13_10)$(13_10)"
/// @description Insert description here
// You can write your code in this editor
powerup1 = true;
score+=100;
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 78662066
/// @DnDArgument : "soundid" "snd_powerup"
/// @DnDSaveInfo : "soundid" "064acadf-0f77-4abb-a25d-1a9c1f09cb8a"
audio_play_sound(snd_powerup, 0, 0);