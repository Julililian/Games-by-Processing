//ラインにぶつかっていたら跳ね返り、カウントが1減る
void checkLines1() {
  if (count1 > 0) {
    int ret = blockHitCheck(c, v, 150, 10, x, y, b_w, b_h, dx, dy);
    if (ret > 0) {
      attack.rewind();
      attack.play();
      count1--;
      if (ret == 1) {
        dx = -dx;
      } else if (ret == 2) {
        dy = -dy;
      } else if (ret == 3) {
        dx = -dx;
        dy = -dy;
      }
    }
  }
}

void checkLines2() {
  if (count2 > 0) {
    int ret = blockHitCheck(b, n, 150, 10, x, y, b_w, b_h, dx, dy);
    if (ret > 0) {
      attack.rewind();
      attack.play();
      count2--;
      if (ret == 1) {
        dx = -dx;
      } else if (ret == 2) {
        dy = -dy;
      } else if (ret == 3) {
        dx = -dx;
        dy = -dy;
      }
    }
  }
}

void checkLines3() {
  if (count3 > 0) {
    int ret = blockHitCheck(m, q, 10, 120, x, y, b_w, b_h, dx, dy);
    if (ret > 0) {
      attack.rewind();
      attack.play();
      count3--;
      if (ret == 1) {
        dx = -dx;
      } else if (ret == 2) {
        dy = -dy;
      } else if (ret == 3) {
        dx = -dx;
        dy = -dy;
      }
    }
  }
}

//クイズの不正解時にラインを表示する　ラインにボールがぶつかると、ボールがぶつかったラインと同じ色に変色する
void showLines1() {
  if (count1 >= 0) {
    if (count1 % 3 == 1) {//この時、ラインは赤でボールは黄
      fill(255, 0, 0);
      rect(c, v, 150, 10);
      fill(255, 255, 0);
      ellipse(x, y, b_w, b_h);
      CN = 2;
      if (count1 == 1000) {//最初のボールの色は白
        fill(255);
        ellipse(x, y, b_w, b_h);
        CN = 0;
      }
    }
    if (count1 % 3 == 2) {//この時、ラインは黄でボールは緑
      fill(255, 255, 0);
      rect(c, v, 150, 10);
      fill(0, 255, 0);
      ellipse(x, y, b_w, b_h);
      CN = 3;
    }
    if (count1 % 3 == 0) {//この時、ラインは緑でボールは赤
      fill(0, 255, 0);
      rect(c, v, 150, 10);
      fill(255, 0, 0);
      ellipse(x, y, b_w, b_h);
      CN = 1;
    }
  }
}

void showLines2() {
  if (count2 >= 0) {
    if (count2 % 3 == 1) {//この時、ラインは黄でボールは緑
      fill(255, 255, 0);
      rect(b, n, 150, 10);
      fill(0, 255, 0);
      ellipse(x, y, b_w, b_h);
      CN = 3;
      if (count2 == 1000) {//最初のボールの色は白
        fill(255);
        ellipse(x, y, b_w, b_h);
        CN = 0;
      }
    }
    if (count2 % 3 == 2) {//この時、ラインは緑でボールは赤
      fill(0, 255, 0);
      rect(b, n, 150, 10);
      fill(255, 0, 0);
      ellipse(x, y, b_w, b_h);
      CN = 1;
    }
    if (count2 % 3 == 0) {//この時、ラインは赤でボールは黄
      fill(255, 0, 0);
      rect(b, n, 150, 10);
      fill(255, 255, 0);
      ellipse(x, y, b_w, b_h);
      CN = 2;
    }
  }
}

void showLines3() {
  if (count3 >= 0) {
    if (count3 % 3 == 1) {//この時、ラインは緑でボールは赤
      fill(0, 255, 0);
      rect(m, q, 10, 120);
      fill(255, 0, 0);
      ellipse(x, y, b_w, b_h);
      CN = 1;
      if (count3 == 1000) {//最初のボールの色は白
        fill(255);
        ellipse(x, y, b_w, b_h);
        CN = 0;
      }
    }
    if (count3 % 3 == 2) {//この時、ラインは赤でボールは黄
      fill(255, 0, 0);
      rect(m, q, 10, 120);
      fill(255, 255, 0);
      ellipse(x, y, b_w, b_h);
      CN = 2;
    }
    if (count3 % 3 == 0) {//この時、ラインは黄でボールは緑
      fill(255, 255, 0);
      rect(m, q, 10, 120);
      fill(0, 255, 0);
      ellipse(x, y, b_w, b_h);
      CN = 3;
    }
  }
}
