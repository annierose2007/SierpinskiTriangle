public void setup()
{
  background(255, 204, 255);
  size(700, 700);
}
public void draw()
{
  sierpinski(25, 675, 650);
}
public void sierpinski(int x, int y, int len) 
{
  if (len<50) {
    triangle(x, y, x+len/2, y-len, x+len, y);
  } else {
    stroke(255,50,50);
    fill(255, 102, 153);
    sierpinski(x, y, len/2);
    fill(255, 51, 153);
    sierpinski(x+len/2, y, len/2);
    fill(255, 153, 204);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
