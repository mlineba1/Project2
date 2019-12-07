/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 003BD72D
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)if(pHealth <10){$(13_10)pHealth +=1;$(13_10)audio_play_sound(snd_health,1,false);$(13_10)instance_destroy();$(13_10)score+=10;$(13_10)}$(13_10)"
/// @description Insert description here
// You can write your code in this editor
if(pHealth <10){
pHealth +=1;
audio_play_sound(snd_health,1,false);
instance_destroy();
score+=10;
}