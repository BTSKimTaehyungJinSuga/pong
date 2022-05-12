void game() {
  //music
  theme.play();
  gameover.pause();
  
  background(brown);
  
  //center line
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);
  
  //scorebaord
  textSize(50);
  fill(pink);
  text(leftscore, width/4, 100);
  fill(green);
  text(rightscore, 3*width/4, 100);
  //fill(255);
  //text(timer, 3*width/4, 550);
  timer--;
  
  //draw paddles
  fill(pink);
  circle(leftx, lefty, leftd);
  fill(green);
  circle(rightx, righty, rightd);
  
  //draw ball
  fill(lightpurple);
  circle(ballx, bally, balld);
  
  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  if (AI == false) {
    if (upkey == true) righty = righty - 5;
    if (downkey == true) righty = righty + 5;
  }else {
    //righty = bally;
    if (ballx > width/2) {
      if (bally > righty) righty = righty + 5;
      if (bally < righty) righty = righty - 5;
    }
  }
  
  //move ball
  if (timer < 0){
    ballx = ballx + vx;
    bally = bally + vy;
  }
  
  //scoring
  if (ballx < 0) {
    rightscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    bump.rewind();
    bump.play();
  }
  if (ballx > 800) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    bump.rewind();
    bump.play();
  }
  
  
  //bouncing
  if (bally <= balld/2 || bally >= height - balld/2) {
    vy = vy * -1;
  }
  if (dist(ballx, bally, rightx, righty) < balld/2 + rightd/2){
    vx = (ballx - rightx)/10;
    vy = (bally - righty)/10;
    coin.rewind();
    coin.play();
  }
  if (dist(ballx, bally, leftx, lefty) < balld/2 + leftd/2){
    vx = (ballx - leftx)/10;
    vy = (bally - lefty)/10;
    coin.rewind();
    coin.play();
  }
  
  //hard boundaries
  if (lefty <= leftd/2) lefty = leftd/2;
  if (lefty >= height-leftd/2) lefty = height - leftd/2;
  if (righty <= rightd/2) righty = rightd/2;
  if (righty >= height-rightd/2) righty = height - rightd/2;
  
  if (rightscore >= 3 || leftscore >= 3) {
    mode = GAMEOVER;
  }
  
}

void gameClicks() {
  mode = PAUSE;
}
