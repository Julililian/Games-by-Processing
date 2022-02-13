int block1[] = new int[20];
int block2[] = new int[20];
int block3[] = new int[20];
int block4[] = new int[20];
int block5[] = new int[5];

float x, y, b_w = 15, b_h = 15, dx, dy;//ボールの座標、直径、速さ
int CN;//ボールがラインに当たった時に値を与えられる変数　これを用いてラケットとボールの色が同じかを判定する

float bw, bh = 60.0;//ブロックの辺の長さ
int a, s, d, f, g, h, j, k, l, z;//ランダムな位置に出現するブロック

float r_w = 100.0, r_h = 10.0;//ラケットの幅、高さ
int colorNumber;//ラケットの色を変える
int risk ;//ラケットの耐久値

int w, e, r, t, u;//ランダムに与えられるクイズの番号
int quiz;//クイズの出題時、正解時、不正解時に使うswitch文の変数

int count1, count2, count3;//ラインの耐久値
int c, v, b, n, m, q;//ラインの座標

int state;//state0 = スタート画面 state1 = プレイ画面 state2 = ゲームオーバー画面 state3 = ゲームクリア画面
int score; // スコアを記録する

void setup() {
  size(1200, 800);
  textAlign(LEFT);
  strokeWeight(3);
  monster = loadImage("Monster.png");//敵の画像
  opening = loadImage("OP.png");//スタート画面の背景
  playing = loadImage("Background.jpg");//プレイ画面の背景
  PFont font = createFont("MS Gothic", 50);
  textFont (font);

  initBlocks();
  initBall();
  CN = 0;
  colorNumber =0;
  risk = 5;
  quiz = 0;
  state = 0;
  score = 0;

  //音楽を使う
  minim = new Minim(this);
  loopSong = minim.loadFile("Melody.mp3");//BGM
  loopSong.rewind();
  loopSong.play();
  gameover = minim.loadFile("gameover.mp3");//ゲームオーバー時の音
  gameclear = minim.loadFile("gameclear.mp3");//ゲームクリア時の音

  //効果音を使う
  attack = minim.loadSnippet("attack.mp3");//ボールがブロックに当たった時に鳴る音
  bom = minim.loadSnippet("bom.mp3");//ラケットの耐久値が減った時に鳴る音
  select = minim.loadSnippet("select.mp3");//三色の円をクリックした時に鳴る音
  colorChange = minim.loadSnippet("colorChange.mp3");//ラケットの色を変える時に鳴る音
  correct = minim.loadSnippet("Correct.mp3");//クイズに正解時に鳴る音
  incorrect = minim.loadSnippet("Uncorrect.mp3");//クイズに不正解時に鳴る音
  count = minim.loadSnippet("Count.mp3");//ラケットの耐久値が減った時に鳴る音

  //クイズに出てくる歌
  kiseki= minim.loadFile("Kiseki.mp3");
  dora= minim.loadFile("Dora.mp3");
  chery= minim.loadFile("Chery.mp3");
  weare= minim.loadFile("Weare.mp3");
  tentai= minim.loadFile("Tentai.mp3");
  sorahune= minim.loadFile("Sorahune.mp3");
  inferuno= minim.loadFile("Inferno.mp3");
  Happiness= minim.loadFile("Happiness.mp3");
  Pretender= minim.loadFile("Pretender.mp3");
  zense= minim.loadFile("Zenzenzense.mp3");
  mezase= minim.loadFile("Pokemon.mp3");
  sayonara= minim.loadFile("Sayonara.mp3");
  marunouti= minim.loadFile("Marunouti.mp3");
  memesikute= minim.loadFile("Memesikute.mp3");
  tamasii= minim.loadFile("Tamasii.mp3");

  a = int (random(300));
  s = int(random(150, 240));
  d = int (random(300));
  f = int(random(300, 400));
  g = int (random(900, 1140));
  h = int(random(150, 240));
  j = int (random(900, 1140));
  k = int(random(300, 400));
  l = int (random(360, 560));
  z = int(random(300, 400));

  w = int (random(3));
  e = int (random(3));
  r = int (random(3));
  t = int (random(3));
  u = int (random(3));

  count1 = 1000;
  count2 = 1000;
  count3 = 1000;

  c = int(random(210));
  v = int(random(90, 130));
  b = int(random(840, 1050));
  n = int(random(90, 130));
  m = int(random(630, 830));
  q = int(random(250, 330));
}

void draw() {
  switch(state) {
  case 0:
    image(opening, 0, 0, width, height);
    break;

  case 1:
    fill(255);
    stroke(0, 0, 255);
    x += dx; // dx は1フレームごとにx方向に動く距離(速度)
    y += dy; // dy は1フレームごとにy方向に動く距離(速度)

    playing.resize(1200, 800);
    background(playing);

    //三色の円を表示する
    ellipseMode(CORNER);
    ellipse(x, y, b_w, b_h);
    ellipseMode(CENTER);
    fill(255, 0, 0);
    ellipse(1165, 765, 60, 60);
    fill(255, 255, 0);
    ellipse(1100, 765, 60, 60);
    fill(0, 255, 0);
    ellipse(1035, 765, 60, 60);
    fill(255);
    rect(0, 730, 335, 60);
    rect(340, 730, 660, 60);

    line(0, 710, width, 710);//この線を越えるとゲームオーバーになる

    checkBlocks();
    showBlocks();

    if (checkAndShowRacket(height-50)) {
      score = score + 1;//ボールがラケットに当たった時、スコアを＋１する
    }

    fill(0);
    textSize(25);
    text(score, 0, height - 45); //スコアを表示する
    fill(255);

    // 壁との衝突
    if (y + b_h > 710 || risk < 1) {
      gameOver();//ラケットの下の線を越えるか、ラケットの耐久値が０になった時ゲームオーバーになる
    }
    if (x < 0 || x+b_w >=width) {
      dx = -dx;
    }
    if (y < 0) {
      dy = -dy;
    }

    quizStage();
    break;

  case 2:
    //ゲームオーバー時、音楽を止める
    loopSong.pause();
    kiseki.pause();
    dora.pause();
    chery.pause();
    weare.pause();
    tentai.pause();
    tamasii.pause();
    sorahune.pause();
    inferuno.pause();
    Happiness.pause();
    Pretender.pause();
    zense.pause();
    mezase.pause();
    sayonara.pause();
    marunouti.pause();
    memesikute.pause();

    background(0);
    if (frameCount / 25 % 2 == 0) {//点滅させる
      fill(0);
    } else {
      fill(255);
    }
    textSize(100);
    textAlign(CENTER);
    text("GAME OVER", width/2, height/2);//GAME OVERと表示する
    break;

  case 3:
    //ゲームクリア時、音楽を止める
    loopSong.pause();
    kiseki.pause();
    dora.pause();
    chery.pause();
    weare.pause();
    tentai.pause();
    tamasii.pause();
    sorahune.pause();
    inferuno.pause();
    Happiness.pause();
    Pretender.pause();
    zense.pause();
    mezase.pause();
    sayonara.pause();
    marunouti.pause();
    memesikute.pause();

    background(0);
    if (frameCount / 25 % 2 == 0) {//点滅させる
      fill(0);
    } else {
      fill(255);
    }
    textSize(100);
    textAlign(CENTER);
    text("GAME CLEAR", width/2, height/2);//GAME CLEARと表示する
    break;
  }
}

void colorNumber() {
  if (colorNumber == 0) {
    fill(255);
    stroke(0, 0, 255);
  }
  if (colorNumber == 1) {
    fill(255, 0, 0);
  }
  if (colorNumber == 2) {
    fill(255, 255, 0);
  }
  if (colorNumber == 3) {
    fill(0, 255, 0);
  }
}
