void gameover() {
  //music
  theme.pause();
  gameover.play();
  
  if (rightscore >= 3) {
    strokeWeight(1);
    fill(255);
    textSize(200);
    text("RIGHT", 400, 200);
    text("WINS", 400, 350);
    fill(green);
    text("RIGHT", 403, 203);
    text("WINS", 403, 353);
  }
  if (leftscore >= 3) {
    strokeWeight(1);
    fill(255);
    textSize(200);
    text("LEFT", 400, 200);
    text("WINS", 400, 350);
    fill(pink);
    text("LEFT", 403, 203);
    text("WINS", 403, 353);
  }
}

void gameoverClicks() {
  reset();
  mode = INTRO;
}
