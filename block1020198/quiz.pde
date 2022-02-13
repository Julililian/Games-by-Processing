void quizStage() {
  switch(quiz) {
  case 0://通常１
    if (score >=1 && score <= 25) {
      quiz = 1;
    }
    break;

  case 1://クイズ１
    loopSong.pause();
    randomMusic1();
    break;

  case 2://クイズ１不正解
    if (score >= 15) {
      quiz = 4;
    }
    loopSong.play();
    ellipseMode(CORNER);
    showLines1();
    checkLines1();
    break;

  case 3://通常２（クイズ１正解）
    if (score >= 15) {
      quiz = 4;
    }
    loopSong.play();
    break;

  case 4://クイズ２
    CN = 0;
    loopSong.pause();
    randomMusic2();
    break;

  case 5://クイズ2不正解
    if (score >= 30) {
      quiz = 7;
    }
    loopSong.play();
    ellipseMode(CORNER);
    showLines2();
    checkLines2();
    break;

  case 6://通常3（クイズ2正解）
    if (score >= 30) {
      quiz = 7;
    }
    loopSong.play();
    break;

  case 7://クイズ3
    CN = 0;
    loopSong.pause();
    randomMusic3();
    break;

  case 8://クイズ3不正解
    if (score >= 45) {
      quiz = 10;
    }
    loopSong.play();
    ellipseMode(CORNER);
    showLines3();
    checkLines3();
    break;

  case 9://通常4（クイズ3正解）
    if (score >= 45) {
      quiz = 10;
    }
    loopSong.play();
    break;

  case 10://クイズ4
    CN = 0;
    count3 =1000;//もしクイズ３でラインの耐久値が減っていた場合、それをリセットする
    loopSong.pause();
    randomMusic4();
    break;

  case 11://クイズ4不正解
    if (score >= 60) {
      quiz = 13;
    }
    loopSong.play();
    ellipseMode(CORNER);
    showLines3();
    checkLines3();
    break;

  case 12://通常5（クイズ4正解）
    if (score >= 60) {
      quiz = 13;
    }
    loopSong.play();
    break;

  case 13://クイズ5
    CN = 0;
    count3 = 1000;//もしクイズ３かクイズ４でラインの耐久値が減っていた場合、それをリセットする
    loopSong.pause();
    randomMusic5();
    break;

  case 14://クイズ5不正解
    if (score >= 75) {
      quiz = 15;
    }
    loopSong.play();
    ellipseMode(CORNER);
    showLines3();
    checkLines3();
    break;

  case 15://通常6（クイズ5正解）クイズはここで終了する
    loopSong.play();
    break;
  }
}
