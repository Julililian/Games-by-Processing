void randomMusic1() {//クイズ１
  if (w == 0) {
    kiseki.play();
    fill(0);
    text(5, 0, 785);
    textSize(40);
    text("この歌の名前は?", 25, 780);
    text("(1)キセキ (2)愛唄 (3)HEROES", 340, 780);
    if ((keyPressed == true && (key == '2' || key == '3' )) || ( score > 5)) {//間違いを選ぶかスコアが15を超えると不正解と判定される
      quiz = 2;
      kiseki.pause();
      incorrect.rewind();
      incorrect.play();
    }
    if (keyPressed == true && key == '1') {
      quiz = 3;
      kiseki.pause();
      correct.rewind();
      correct.play();
    }
  }
  if (w == 1) {
    dora.play();
    fill(0);
    text(5, 0, 785);
    textSize(40);
    text("この歌の名前は?", 25, 780);
    text("(1)アイデア (2)ドラえもん (3)恋", 340, 780);
    if ((keyPressed == true && (key == '1' || key == '3' )) || ( score > 5)) {//間違いを選ぶかスコアが15を超えると不正解と判定される
      quiz = 2;
      dora.pause();
      incorrect.rewind();
      incorrect.play();
    }
    if (keyPressed == true && key == '2') {
      quiz = 3;
      dora.pause();
      correct.rewind();
      correct.play();
    }
  }
  if (w == 2) {
    chery.play();
    fill(0);
    text(5, 0, 785);
    textSize(40);
    text("この歌の名前は?", 25, 780);
    text("(1)ロビンソン (2)楓 (3)チェリー", 340, 780);
    if ((keyPressed == true && (key == '1' || key == '2')) || (score > 5)) {//間違いを選ぶかスコアが15を超えると不正解と判定される
      quiz = 2;
      chery.pause();
      incorrect.rewind();
      incorrect.play();
    }
    if (keyPressed == true && key == '3') {
      quiz = 3;
      chery.pause();
      correct.rewind();
      correct.play();
    }
  }
}

void randomMusic2() {//クイズ２
  if (e == 0) {
    weare.play();
    fill(0);
    text(20, 0, 785);
    textSize(40);
    text("この歌の名前は?", 25, 780);
    text("(1)ウィーアー! (2)We Go! (3)Hope", 340, 780);
    if ((keyPressed == true && (key == '2' || key == '3' )) || ( score > 20)) {//間違いを選ぶかスコアが３０を超えると不正解と判定される
      quiz = 5;
      weare.pause();
      incorrect.rewind();
      incorrect.play();
    }
    if (keyPressed == true && key == '1') {
      quiz = 6;
      weare.pause();
      correct.rewind();
      correct.play();
    }
  }
  if (e == 1) {
    tentai.play();
    fill(0);
    text(20, 0, 785);
    textSize(40);
    text("この歌の名前は?", 25, 780);
    text("(1)カルマ (2)天体観測 (3)ray", 340, 780);
    if ((keyPressed == true && (key == '1' || key == '3' )) || ( score > 20)) {//間違いを選ぶかスコアが３０を超えると不正解と判定される
      quiz = 5;
      tentai.pause();
      incorrect.rewind();
      incorrect.play();
    }
    if (keyPressed == true && key == '2') {
      quiz = 6;
      tentai.pause();
      correct.rewind();
      correct.play();
    }
  }
  if (e == 2) {
    tamasii.play();
    fill(0);
    text(20, 0, 785);
    textSize(40);
    text("この歌の名前は?", 25, 780);
    textSize(25);
    text("(1)そばかす (2)YELL (3)タマシイレボリューション", 340, 780);
    if ((keyPressed == true && (key == '1' || key == '2')) || (score > 20)) {//間違いを選ぶかスコアが３０を超えると不正解と判定される
      quiz = 5;
      tamasii.pause();
      incorrect.rewind();
      incorrect.play();
    }
    if (keyPressed == true && key == '3') {
      quiz = 6;
      tamasii.pause();
      correct.rewind();
      correct.play();
    }
  }
}

void randomMusic3() {//クイズ３
  if (r == 0) {
    sorahune.play();
    fill(0);
    text(35, 0, 785);
    textSize(40);
    text("この歌の名前は?", 25, 780);
    text("(1)宙船 (2)リリック (3)地上の星", 340, 780);
    if ((keyPressed == true && (key == '2' || key == '3' )) || ( score > 35)) {//間違いを選ぶかスコアが４５を超えると不正解と判定される
      quiz = 8;
      sorahune.pause();
      incorrect.rewind();
      incorrect.play();
    }
    if (keyPressed == true && key == '1') {
      quiz = 9;
      sorahune.pause();
      correct.rewind();
      correct.play();
    }
  }
  if (r == 1) {
    inferuno.play();
    fill(0);
    text(35, 0, 785);
    textSize(40);
    text("この歌の名前は?", 25, 780);
    textSize(35);
    text("(1)青と夏 (2)インフェルノ (3)点描の唄", 340, 780);
    if ((keyPressed == true && (key == '1' || key == '3' )) || ( score > 35)) {//間違いを選ぶかスコアが４５を超えると不正解と判定される
      quiz = 8;
      inferuno.pause();
      incorrect.rewind();
      incorrect.play();
    }
    if (keyPressed == true && key == '2') {
      quiz = 9;
      inferuno.pause();
      correct.rewind();
      correct.play();
    }
  }
  if (r == 2) {
    Happiness.play();
    fill(0);
    text(35, 0, 785);
    textSize(40);
    text("この歌の名前は?", 25, 780);
    textSize(35);
    text("(1)Monster (2)A･RA･SHI (3)Happiness", 340, 780);
    if ((keyPressed == true && (key == '1' || key == '2')) || (score > 35)) {//間違いを選ぶかスコアが４５を超えると不正解と判定される
      quiz = 8;
      Happiness.pause();
      incorrect.rewind();
      incorrect.play();
    }
    if (keyPressed == true && key == '3') {
      quiz = 9;
      Happiness.pause();
      correct.rewind();
      correct.play();
    }
  }
}

void randomMusic4() {//クイズ４
  if (t == 0) {
    Pretender.play();
    fill(0);
    text(50, 0, 785);
    textSize(40);
    text("この歌の名前は?", 25, 780);
    text("(1)Pretender (2)宿命 (3)I LOVE...", 340, 780);
    if ((keyPressed == true && (key == '2' || key == '3' )) || ( score > 50)) {//間違いを選ぶかスコアが６０を超えると不正解と判定される
      quiz = 11;
      Pretender.pause();
      incorrect.rewind();
      incorrect.play();
    }
    if (keyPressed == true && key == '1') {
      quiz = 12;
      Pretender.pause();
      correct.rewind();
      correct.play();
    }
  }
  if (t == 1) {
    zense.play();
    fill(0);
    text(50, 0, 785);
    textSize(40);
    text("この歌の名前は?", 25, 780);
    textSize(30);
    text("(1)なんでもないや (2)前前前世 (3)スパークル", 340, 780);
    if ((keyPressed == true && (key == '1' || key == '3' )) || ( score > 50)) {//間違いを選ぶかスコアが６０を超えると不正解と判定される
      quiz = 11;
      zense.pause();
      incorrect.rewind();
      incorrect.play();
    }
    if (keyPressed == true && key == '2') {
      quiz = 12;
      zense.pause();
      correct.rewind();
      correct.play();
    }
  }
  if (t == 2) {
    mezase.play();
    fill(0);
    text(50, 0, 785);
    textSize(40);
    text("この歌の名前は?", 25, 780);
    textSize(20);
    text("(1)ポケモンゲットだぜ! (2)ポケモン (3)めざせポケモンマスター", 340, 780);
    if ((keyPressed == true && (key == '1' || key == '2')) || (score > 50)) {//間違いを選ぶかスコアが６０を超えると不正解と判定される
      quiz = 11;
      mezase.pause();
      incorrect.rewind();
      incorrect.play();
    }
    if (keyPressed == true && key == '3') {
      quiz = 12;
      mezase.pause();
      correct.rewind();
      correct.play();
    }
  }
}

void randomMusic5() {//クイズ５
  if (u == 0) {
    sayonara.play();
    fill(0);
    text(65, 0, 785);
    textSize(40);
    text("この歌の名前は?", 25, 780);
    textSize(30);
    text("(1)さよならエレジー (2)灰色と青 (3)香水", 340, 780);
    if ((keyPressed == true && (key == '2' || key == '3' )) || ( score > 65)) {//間違いを選ぶかスコアが７５を超えると不正解と判定される
      quiz = 14;
      sayonara.pause();
      incorrect.rewind();
      incorrect.play();
    }
    if (keyPressed == true && key == '1') {
      quiz = 15;
      sayonara.pause();
      correct.rewind();
      correct.play();
    }
  }
  if (u == 1) {
    marunouti.play();
    fill(0);
    text(65, 0, 785);
    textSize(40);
    text("この歌の名前は?", 25, 780);
    textSize(30);
    text("(1)本能 (2)丸の内サディスティック (3)NIPPON", 340, 780);
    if ((keyPressed == true && (key == '1' || key == '3' )) || ( score > 65)) {//間違いを選ぶかスコアが７５を超えると不正解と判定される
      quiz = 14;
      marunouti.pause();
      incorrect.rewind();
      incorrect.play();
    }
    if (keyPressed == true && key == '2') {
      quiz = 15;
      marunouti .pause();
      correct.rewind();
      correct.play();
    }
  }
  if (u == 2) {
    memesikute.play();
    fill(0);
    text(65, 0, 785);
    textSize(40);
    text("この歌の名前は?", 25, 780);
    text("(1)令和 (2)女女しくて (3)女々しくて", 340, 780);
    if ((keyPressed == true && (key == '1' || key == '2')) || (score > 65)) {//間違いを選ぶかスコアが７５を超えると不正解と判定される
      quiz = 14;
      memesikute.pause();
      incorrect.rewind();
      incorrect.play();
    }
    if (keyPressed == true && key == '3') {
      quiz = 15;
      memesikute.pause();
      correct.rewind();
      correct.play();
    }
  }
}
