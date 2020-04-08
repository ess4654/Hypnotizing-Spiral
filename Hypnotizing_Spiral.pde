float speed = 5;
float stroke = 10;
float strokeAdd = 0.5;

void setup()
{
  size(800, 800, P2D);
  noFill();
}

void draw()
{
  background(0);
  smooth();
  translate(width / 2, height / 2);
  rotate(speed * radians(frameCount));
  stroke(255);
  strokeWeight((int)stroke);
  beginShape();
  for(int i = 10; i < 360; i++)
    curveVertex((i*2)*sin(i/5.0), (i*2)*cos(i/5.0));
  endShape();
  stroke += strokeAdd;
  if(stroke <= 10 || stroke >= 40)
    strokeAdd = -strokeAdd;
}
