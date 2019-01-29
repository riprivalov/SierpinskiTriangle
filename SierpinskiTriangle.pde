public void setup()
{
	size(800,800);
	background(9,100, 80);
}
public void draw()
{
	sierpinski(150,150,400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	
	if (len<=10){
		triangle(x, y, x+len, y, x+(len)/2, y+len);
	}
	else{
		triangle(x, y, x+len, y, x+(len)/2, y+len);
		triangle(x, y, x+len, y, x+(len)/2, y+len); 
		sierpinski(x,y,len/2);
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