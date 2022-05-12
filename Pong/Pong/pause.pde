void pause() {
  //music
  theme.pause();
  
  fill(red);
  textSize(260);
  text("PAUSE", width/2, height/2);
}


void pauseClicks() {
  mode = GAME;
}
