float Y = 0;
float X = 0;
float Z = 0;

void reSize() {
  if (keyCode == DOWN) {//スケールが小さくなる
    scale(0.6);
  }
}

void preview() {
  if (keyCode == RIGHT) {//視点が連続的に変わる（早め）
    scale(0.6);
    Y = Y + 1.125;
    X = X + 1.125;
    Z = Z + 1.5;
    rotateY(radians(Y));
    rotateX(radians(X));
    rotateZ(radians(Z));
  }
  if (keyCode == LEFT) {//視点が連続的に変わる（遅め）
    scale(0.6);
    Y = Y + 0.75;
    X = X + 0.75;
    Z = Z + 1.0;
    rotateY(radians(Y));
    rotateX(radians(X));
    rotateZ(radians(Z));
  }
}
