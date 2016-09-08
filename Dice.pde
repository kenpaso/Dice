Die rock;
void setup()
{
	size(400,400);
	background(0);
	fill(255,0,0);
	rect(20,20,360,360);
	noLoop();
}
void draw()
{
	for(int row = 100; row <=380; row =row + 100)
	{	
		rock = new Die(row,200);
		rock.roll();
		rock.show();
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
		int myX;
		int myY;
		int dots;

	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x-30;
		myY = y-30;
	}
	void roll()
	{
		dots = ((int)(Math.random()*6)+1);
	}
	void show()
	{	
		fill(255);
		rect(myX,myY,50,50);		
		if(dots == 1)
		{
			fill(0);
			ellipse(myX+25,myY+25,10,10);	
		}	
		if(dots == 2)
		{
			fill(0);
			ellipse(myX+25,myY+15,10,10);
			ellipse(myX+25,myY+35,10,10);
		}
		if(dots == 3)
		{
			fill(0);
			ellipse(myX+25,myY+25,10,10);
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+35,myY+35,10,10);
		}		
		if(dots == 4)
		{
			fill(0);
			ellipse(myX+35,myY+35,10,10);
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+35,myY+15,10,10);
			ellipse(myX+15,myY+35,10,10);
		}
		if(dots == 5)
		{
			fill(0);
			ellipse(myX+35,myY+35,10,10);
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+35,myY+15,10,10);
			ellipse(myX+15,myY+35,10,10);
			ellipse(myX+25,myY+25,10,10);
		}
		if(dots == 6)
		{
			fill(0);
			ellipse(myX+40,myY+35,10,10);
			ellipse(myX+10,myY+15,10,10);
			ellipse(myX+40,myY+15,10,10);
			ellipse(myX+10,myY+35,10,10);
			ellipse(myX+25,myY+15,10,10);
			ellipse(myX+25,myY+35,10,10);

		}

	}
}
