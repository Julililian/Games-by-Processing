boolean checkAndShowRacket(float r_y) {
  boolean hit = false;
  float r_x = mouseX; // r_x はラケットの左側のx座標

  // 右に寄りすぎていたら補正する
  if (r_x + r_w > width) { 
    r_x = width - r_w;
  } 

  // ラケットにボールがぶつかっていたら上に跳ね返る 
  if (blockHitCheck(r_x, r_y - 60, r_w, r_h, x, y, b_w, b_h, dx, dy) > 0) {
    //ボールの色が白またはラケットとボールの色が同じ時、ボールの耐久値は減らない
    if ((colorNumber == 1 && CN == 1) || (colorNumber == 2 && CN == 2) || (colorNumber == 3 && CN == 3) || CN == 0) {
      dy = -dy;
      hit = true;
      bom.rewind();
      bom.play();
    } else {//それ以外の時は耐久値が１減る
      risk--;
      dy = -dy;
      hit = true;
      count.rewind();
      count.play();
    }
  }
  textSize(22);
  text(risk, r_x, r_y - 30);//ラケットの耐久値を表示する

  switch(state) {
  case 1:
    colorNumber();
    rect(r_x, r_y - 60, r_w, r_h); // racketを表示する
    break;
  }
  return hit;
}
