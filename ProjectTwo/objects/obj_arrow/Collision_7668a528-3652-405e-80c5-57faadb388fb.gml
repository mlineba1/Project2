// Destroy the rat when the arrow collides with it
with (other)
{
instance_destroy();
}

// Destroy the arrow
instance_destroy();
audio_play_sound(snd_ratDeath,1,false);