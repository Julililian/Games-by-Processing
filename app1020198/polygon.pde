float time = 0.98;//リングの消滅にかかる時間に関わる定数

public class Polygons {
  int x, y, z;
  float dia;//リングの直径
  float speed;//リングが広がる速さ
  int colorR;//リングの色
  boolean flag;//リングを表示するor表示しない

  Polygons() {
    base(0, 0, 0, 0, 0);
    flag = false;
  }

  public Polygons(Polygons figure) {
    this.x = figure.x;
    this.y = figure.y;
    this.z = figure.z;
    this.speed = figure.speed;
    this.colorR = figure.colorR;
    this.dia = figure.dia;
    this.flag = figure.flag;
  }

  public void base(int gx, int gy, int gz, float gspeed, int gcolorR) {
    x = gx;
    y = gy;
    z = gz;
    speed = gspeed;
    colorR = gcolorR;
    dia = 0.0;
    flag = true;
  }

  public void showPolygons() {//リングを表示
    noFill();
    if (speed > 1.0) {
      stroke(colorR, 60, 99, 100*(speed-1.0)/3);
      strokeWeight(4);
      pushMatrix();
      translate(x, y, z);
      reSize();
      sphereDetail(4);
      sphere(dia*2);
      popMatrix();
    }
    if (speed > 1.5) {
      stroke(colorR, 60, 99, 100*(speed-1.5)/3);
      strokeWeight(2);
      pushMatrix();
      translate(x, y, z);
      reSize();
      sphereDetail(2);
      sphere(dia*4);
      popMatrix();
    }
    if (speed > 2.0) {
      stroke(colorR, 60, 99, 100*(speed-2.0)/3);
      strokeWeight(1);
      pushMatrix();
      translate(x, y, z);
      reSize();
      sphereDetail(3);
      sphere(dia*15);
      popMatrix();
    }
  }

  public void movePolygons() {
    dia += speed;
    speed *= time;//0.98を掛け続ける
    if (speed < 0.5) {//0.98のn乗が0.5を下回ったときに消える
      flag = false;
    }
  }

  public boolean getFlag() {
    return flag;
  }
}
