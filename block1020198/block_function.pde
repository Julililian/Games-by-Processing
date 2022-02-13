//ブロックの耐久値を初期化する
void initBlocks() {
  for (int i = 0; i < block1.length; i++) {
    block1[i] = 2;
  }
  for (int u = 0; u < block1.length; u++) {
    block2[u] = 2;
  }
  for (int l = 0; l < block1.length; l++) {
    block3[l] = 2;
  }
  for (int r = 0; r < block1.length; r++) {
    block4[r] = 2;
  }
  for (int e = 0; e < block5.length; e++) {
    block5[e] = 7;//敵の耐久値
  }
  bw = width / block1.length; // ブロックの幅を決める
}

//ブロックのどれかにぶつかっていたら跳ね返る
void checkBlocks() {
  for (int i = 0; i < block1.length; i++) {
    if (block1[i] > 0) {
      int ret = blockHitCheck(i*bw, 10, bw, bh, x, y, b_w, b_h, dx, dy);
      if (ret > 0) {
        attack.rewind();
        attack.play();
        block1[i]--;
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
  for (int u = 0; u < block2.length; u++) {
    if (block2[u] > 0 && ((u >5 && u < 8) || (u > 11 && u < 14))) {
      int ret = blockHitCheck(u*bw, 70, bw, bh, x, y, b_w, b_h, dx, dy);
      if (ret > 0) {
        attack.rewind();
        attack.play();
        block2[u]--;
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
  for (int l = 0; l < block3.length; l++) {
    if (block3[l] > 0 && ((l >5 && l < 8) || (l > 11 && l < 14))) {
      int ret = blockHitCheck(l*bw, 130, bw, bh, x, y, b_w, b_h, dx, dy);
      if (ret > 0) {
        attack.rewind();
        attack.play();
        block3[l]--;
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
  for (int r = 0; r < block4.length; r++) {
    if (block4[r] > 0 && r > 5  && r < 14) {
      int ret = blockHitCheck(r*bw, 190, bw, bh, x, y, b_w, b_h, dx, dy);
      if (ret > 0) {
        attack.rewind();
        attack.play();
        block4[r]--;
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
  for (int e = 0; e < block5.length; e++) {
    if (block5[e] > 0 && e == 2) {
      int ret = blockHitCheck(e*240, 70, 240, 2 * bh, x, y, b_w, b_h, dx, dy);
      if (ret > 0) {
        attack.rewind();
        attack.play();
        block5[e]--;
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
  //耐久値を持たない5個のブロックのどれかにぶつかっていたら跳ね返る
  int ret = blockHitCheck(a, s, 60, 60, x, y, b_w, b_h, dx, dy);
  if (ret > 0) {
    attack.rewind();
    attack.play();
    if (ret == 1) {
      dx = -dx;
    } else if (ret == 2) {
      dy = -dy;
    } else if (ret == 3) {
      dx = -dx;
      dy = -dy;
    }
  }
  ret = blockHitCheck(d, f, 60, 60, x, y, b_w, b_h, dx, dy);
  if (ret > 0) {
    attack.rewind();
    attack.play();
    if (ret == 1) {
      dx = -dx;
    } else if (ret == 2) {
      dy = -dy;
    } else if (ret == 3) {
      dx = -dx;
      dy = -dy;
    }
  }
  ret = blockHitCheck(g, h, 60, 60, x, y, b_w, b_h, dx, dy);
  if (ret > 0) {
    attack.rewind();
    attack.play();
    if (ret == 1) {
      dx = -dx;
    } else if (ret == 2) {
      dy = -dy;
    } else if (ret == 3) {
      dx = -dx;
      dy = -dy;
    }
  }
  ret = blockHitCheck(j, k, 60, 60, x, y, b_w, b_h, dx, dy);
  if (ret > 0) {
    attack.rewind();
    attack.play();
    if (ret == 1) {
      dx = -dx;
    } else if (ret == 2) {
      dy = -dy;
    } else if (ret == 3) {
      dx = -dx;
      dy = -dy;
    }
  }
  ret = blockHitCheck(l, z, 60, 60, x, y, b_w, b_h, dx, dy);
  if (ret > 0) {
    attack.rewind();
    attack.play();
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

//耐久値を持つブロックを表示する
void showBlocks() {
  textSize(17);
  for (int i = 0; i < block1.length; i++) {
    if (block1[i] > 0) {
      fill(255, 248, 220);
      rect(i * bw, 10, bw, bh); // ブロックの形の表示
      fill(0);
      text(block1[i], i * bw, 25); // 消すために必要なhitの個数
    }
  }
  for (int u = 0; u < block2.length; u++) {
    if (block2[u] > 0 && ((u >5 && u < 8) || (u > 11 && u < 14))) {
      fill(255, 248, 220);
      rect(u * bw, 70, bw, bh); // ブロックの形の表示
      fill(0);
      text(block2[u], u * bw, 85); // 消すために必要なhitの個数
    }
  }

  for (int l = 0; l < block3.length; l++) {
    if (block3[l] > 0 && ((l >5 && l < 8) || (l > 11 && l < 14))) {
      fill(255, 248, 220);
      rect(l * bw, 130, bw, bh); // ブロックの形の表示
      fill(0);
      text(block3[l], l * bw, 145); // 消すために必要なhitの個数
    }
  }
  for (int r = 0; r < block4.length; r++) {
    if (block4[r] > 0 && r > 5 && r < 14) {
      fill(255, 248, 220);
      rect(r * bw, 190, bw, bh); // ブロックの形の表示
      fill(0);
      text(block4[r], r * bw, 205); // 消すために必要なhitの個数
    }
  }
  for (int e = 0; e < block5.length; e++) {
    if (block5[e] > 0 && e == 2) {
      image(monster, e * 240, 70, 240, 2 * bh); // ブロックの形の表示
      fill(0);
      text(block5[e], e * 240, 85); // 消すために必要なhitの個数
    }
    if (block5[e] < 1) {
      gameClear();
    }
  }
  //耐久値を持たない5個のブロックをランダムに表示する
  fill(255, 140, 0);
  rect(a, s, 60, 60);
  rect(d, f, 60, 60);
  rect(g, h, 60, 60);
  rect(j, k, 60, 60);
  rect(l, z, 60, 60);
}
