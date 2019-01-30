public void setup()
{
	size(1000,1000);
	background(9,100, 80);
}
public void draw()
{
	fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	sierpinski(150,150,400);
}
public void mouseDragged()//optional
{

	redraw();
}
public void sierpinski(int x, int y, int len) 
{
	
	if (len<=1){
		triangle(x, y, x+len, y, x+(len)/2, y+len);
	}
	else{
		triangle(x, y, x+len, y, x+(len)/2, y+len); 
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));	
		sierpinski(x,y,len/2);
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		sierpinski(x+len/2,y+len,len/2);
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		sierpinski(x+len,y,len/2);
	}
/*	else{
		fill(40,50,120);
		triangle(x, y, x+len, y+len, x+(len)/2, y+len);
		fill(332,65,232);
		triangle(x+(len)/2, y, x+len, y, x+(len)/2, y+len);
		fill(233,125,212);
		triangle(x+(len)/2, y, x+len, y+len, x+(len)/2, y+len);
		sierpinski(x+5,y+5,len/2);
	}
*/
}