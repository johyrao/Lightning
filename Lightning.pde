int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
  size(500,300);
  strokeWeight(4);
  background(255);
}
void draw()
{	
	
	while (endX < 500) 
	{
		stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		endX = startX + (int)(Math.random()*9);
		endY = startY + (int)(Math.random()*18)-9;
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;	
	}		
}
void mousePressed()
{
	if (mousePressed == true)
	{
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;		
	}
}

