ArrayList<Branch>drawnBranches = new ArrayList<Branch>();
int counter = 0;
public void setup() 
{   
	size(1000,600);
	background(0);
	drawnBranches.add(new Branch(500,650,200,-PI/2));
}
public void draw()
{
	stroke(0,255,0);
	drawnBranches.get(counter).showBranches();
	if(counter<drawnBranches.size())
	{
		counter++;
	}
	else
	{
		fill(255);
		textAlign(CENTER,CENTER);
		textSize(30);
		text("Tree Finished",500,500);
	}
}
class Branch
{
	private float myXStart,myXEnd,myYStart,myYEnd,myLength,myAngle;
	public Branch(float x,float y,float branchLength,float angle)
	{
		myAngle = angle;
		myLength = branchLength;
		myXStart = x;
		myXEnd = myXStart+(int)(myLength*Math.cos(myAngle));
		myYStart = y;
		myYEnd = myYStart+(int)(myLength*Math.sin(myAngle));
	}
	public void showBranches()
	{
		line(myXStart,myYStart,myXEnd,myYEnd);
		int maxBranches = (int)(Math.random()*5)+1;
		if(myLength>3)
		{
			for(int i=0;i<maxBranches;i++)
				createBranches();
		}
	}
	public void createBranches()
	{
		float angleAdd = (float)(Math.random()*PI*2.0/3.0)-(PI/3.0);
		float lengthAdd = (float)((Math.random()*0.4)+0.5);
		drawnBranches.add(new Branch(myXEnd,myYEnd,myLength*lengthAdd,myAngle+angleAdd));
	}
}
