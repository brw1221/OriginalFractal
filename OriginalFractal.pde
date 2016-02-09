public void setup()
{
	size(600,600);
	background(0);
	noLoop();
}
public void draw()
{
	fractal(300,300,500);
}
public void fractal(int x, int y, int size)
{
	if(size >50)
	{
		noFill();
		stroke(60,179,113);
		fractal(x-10,y-10,size-90);
		fractal(x+10,y-10,size-90);
		fractal(x-10,y+10,size-90);		
		stroke(32,178,170);
		fractal(x+10,y+10,size-90);
		ellipse(x,y,size,size);
		System.out.println(size);
	}
	else
	{
		ellipse(x, y, size, size);
	}
}