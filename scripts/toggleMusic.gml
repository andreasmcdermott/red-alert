if(global.music == 1)
{
    global.music = 0;
    audio_pause_music();
}
else
{
    global.music = 1;
    audio_resume_music();
}

ini_open("data.ini");
ini_write_real("settings", "music", global.music);
ini_close();
