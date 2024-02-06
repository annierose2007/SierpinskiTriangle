public void setup()
{
  background(212, 209, 255);
  size(700, 700);
}
public void draw()
{
  sierpinski(25, 675, 650);
}
public void mousePressed()//optional
{  
  //sierpinski(25, 675, (int)(Math.random()*590));
}
public void sierpinski(int x, int y, int len) 
{
  if (len<30) {
    triangle(x, y, x+len/2, y-len, x+len, y);
  } else {
    fill(200, 150, ((int)Math.random()*255)+250);
    sierpinski(x, y, len/2);
    fill(230, 170, ((int)Math.random()*255)+175);
    sierpinski(x+len/2, y, len/2);
    fill(200, 170, ((int)Math.random()*255)+200);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
