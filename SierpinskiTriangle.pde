public void setup()
{
  background(0,0,0);
  size(500,500);
}
public void draw()
{
  sierpinski(0,500,500);
}
public void mouseClicked()//optional
{
  sierpinski(mouseX-50,mouseY+50,100);
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    fill(color(235, 131, 52));
    triangle(x,y,x+len,y,x+len/2,y-len);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y - len/2, len/2);
  }
}
