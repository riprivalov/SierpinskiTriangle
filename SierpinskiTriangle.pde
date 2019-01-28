public void setup()
{
	size(500,500);
	background(180,180, 180);
}
public void draw()
{
	sierpinski(300,300,300);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len<=10){
		triangle(x, y, x+len, y, (x+len)/2, len);
	}
	else{
		triangle(x, y, x+len, y, (x+len)/2, len);
		sierpinski(x/2,y/2,len/2);
	}
}