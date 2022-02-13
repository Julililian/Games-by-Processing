void gameClear() {
  gameclear.rewind();
  gameclear.play();
  switch(state) {
  case 1:
    state = 3;//ゲームクリアの画面へ移る
    break;
  }
}

void gameOver() {
  gameover.rewind();
  gameover.play();
  switch(state) {
  case 1:
    state = 2;//ゲームオーバーの画面に移る
    break;
  }
}
