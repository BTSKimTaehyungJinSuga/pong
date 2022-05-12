void intro() {
  //music
  theme.play();
  
  background(lightpurple);
  
  strokeWeight(1);
  fill(red);
  textSize(200);
  text("PONG", 400, 200);
  fill(255);
  text("PONG", 405, 205);
  
  //1 player
  tactile(200, 500, 300, 125);
  rect(200, 500, 300, 125);
  fill(0);
  textSize(50);
  text("1 Player", 200, 490);
  
  //2 player
  tactile(600, 500, 300, 125);
  rect(600, 500, 300, 125);
  fill(0);
  textSize(50);
  text("2 Player", 600, 490);
  
}

void introClicks() {
  //1 player
  if (clickedOnRect(200, 500, 300, 125)) {
    mode = GAME;
    AI = true;
  }
  
  //2 player
  if (clickedOnRect(600, 500, 300, 125)) {
    mode = GAME;
    AI = false;
  }
}
