void mousePressed() {
  switch(state) {
  case 0:
    //STARTをマウスでクリックするとプレイ画面へ移る
    if (mouseX < 860 && mouseX > 335 && mouseY < 680 && mouseY > 536) {
      select.rewind();
      select.play();
      state = 1;
    }
    break;

  case 1:
    colorNumber();
    //三色の円をマウスでクリックすると、ラケットの色がクリックした円と同じ色になる
    if (dist(1165, 765, mouseX, mouseY) <= 30) {
      colorNumber =1;
      colorChange.rewind();
      colorChange.play();
    }
    if (dist(1100, 765, mouseX, mouseY) <= 30) {
      colorNumber = 2;
      colorChange.rewind();
      colorChange.play();
    }
    if (dist(1035, 765, mouseX, mouseY) <= 30) {
      colorNumber = 3;
      colorChange.rewind();
      colorChange.play();
    }
    break;

  case 2:
    gameover.pause();
    setup();
    break ;

  case 3:
    gameclear.pause();
    setup();
    break ;
  }
}
