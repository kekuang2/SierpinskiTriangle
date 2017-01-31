public void setup()
{
	background(209,244,255);
	size(400,400);
	fill(0);
}

public void draw()
{
	sierpinski(20,380,360);
}

public void mouseDragged()//optional
{

}

public void sierpinski(int x, int y, int len) 
{
	if(len <= 20)
	{
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else 
	{
		fill(0,191,255);
		sierpinski(x,y,len/2);	
		fill(0);
		sierpinski(x+len/2,y,len/2);
		fill(255);
		sierpinski(x+len/4,y-len/2,len/2);	
	}
}