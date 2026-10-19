//week07_1_processing_audio_SoundFile_play
//method 1 processing Sound hack 
//method 2 Minim hack
//sketch Library Manage Libraries
//download sound.zip to folder 文件 -> processing -> libraries
//if success reopen exe files -> examples -> lib -> sound -> soundfile -> Jumble

import processing.sound.*;//use hack
SoundFile sound;
void setup(){
  size(300,300);
  sound = new SoundFile(this, "music.mp3");
  sound.play();//pull it in here
}
void draw(){
  
}
