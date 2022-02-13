/*
specSize()・・・周波数の分解幅
 getBand()・・・周波数帯域ごとの振幅を取得
 */

int x, y;

import ddf.minim.*;
import ddf.minim.analysis.*;
Minim minim;
AudioPlayer player;
FFT fft;// FFT（高速フーリエ変換）の変数を用意
int fftSize=512;// FFT が利用するメモリサイズを決める
int SIZE = 20;
Polygons[] polygon = new Polygons[SIZE];

void setup() {
  size(1100, 550, P3D);
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
  smooth();
  frameRate(30);

  for (int i=0; i<SIZE; i++) {
    polygon[i] = new Polygons();
  }
  minim=new Minim(this);
  player=minim.loadFile("Pretender.mp3", fftSize);
  player.loop();
  fft= new FFT(player.bufferSize(), player.sampleRate());//分析する音源のbufferSizeとsampleRateを与える。
}

void draw() {
  background(0);
  translate(width/2, height/2, -1000);
  reSize();
  preview();
  rotateY(radians(mouseX));    //Y軸に対してマウスのX軸の動きによって角度を変える
  rotateX(radians(mouseY));    //Y軸に対してマウスのX軸の動きによって角度を変える 

  fft.forward(player.left);//左チャンネルのFFTを解析
  for (int i = 0; i<fft.specSize(); i++) {
    colorMode(HSB, 360, 100, 100, 100);
    noStroke();
    float h = map(i, 0, fft.specSize(), 0, 530);//周波数帯域の個数が多いほどラインに青味が増す
    float a = map(fft.getBand(i), 0, fftSize/64.0, 0, 255);//音量を線の色の透明度で表現
    float x = map(i, 0, fft.specSize(), width/2, 0);//周波数帯域の個数が多いほどラインがウィンドウの左端に寄る
    float w = width / float(fft.specSize());
    fill(h, 80, 160, a);
    pushMatrix();
    translate(x-width/2, 0);
    reSize();
    box(w, height, 400);//ラインを表示する
    popMatrix();
  }
  fft.forward(player.right);//右チャンネルのFFTを解析
  for (int i=0; i<fft.specSize(); i++) {
    colorMode(HSB, 360, 100, 100, 100);
    noStroke();
    float h = map(i, 0, fft.specSize(), 0, 530);//周波数が高いほどラインに赤味が増す
    float a = map(fft.getBand(i), 0, fftSize/64.0, 0, 255);//音量を線の色の透明度で表現
    float x = map(i, 0, fft.specSize(), width/2, width);//周波数が高いほどラインがウィンドウの右端に寄る
    float w = width / float(fft.specSize());
    fill(h, 80, 160, a);
    pushMatrix();
    translate(x-width/2, 0);
    reSize();
    box(w, height, 400);//ラインを表示する
    popMatrix();
  }
  for (int i=0; i<SIZE; i++) {
    if (polygon[i].getFlag()) {
     polygon[i].movePolygons();
      polygon[i].showPolygons();
    }
  }
  for (int i=0; i<fft.specSize(); i++) {
    if (fft.getBand(i) > 95) {//振幅の大きさが95を超えたとき、リングを表示する
      for (int p = SIZE-1; p>0; p--) {
        polygon[p] = new Polygons(polygon[p-1]);
      }
      colorMode(HSB, 70);
      polygon[0].base(int(random(-width, width)), int(random(-height, height)), int(random(-500, 500)), random(5, 10), int(random( 360)));//ランダムにリングを表示する
    }
  }
}
