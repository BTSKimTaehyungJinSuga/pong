boolean clickedOnRect(int x, int y, int w, int h) {
  return mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2;
}

void tactile(int x, int y, int w, int h) {
  if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
    strokeWeight(5);
    fill(255);
    stroke(255, 0, 0);
  } else {
    strokeWeight(2);
    stroke(0);
    fill(255);
  }
}

void reset(){
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  rightx = width;
  righty = height/2;
  rightd = 200;
  

  ballx = width/2;
  bally = height/2;
  balld = 100;
  vx = random(-3, 3);
  vy = random(-3, 3);
  
  rightscore = leftscore = 0;
  timer = 100;

  wkey = skey = upkey = downkey = false;
}
