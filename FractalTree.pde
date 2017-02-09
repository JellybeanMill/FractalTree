ArrayList<Branch>branches = new ArrayList<Branch>();
public void setup() 
{   
	size(1000,600);
	branches.add(new Branch(500,500,200,-PI/2))
	noLoop();
}
public void draw()
{   
	background(0);   
	stroke(0,255,0);   
	line(500,650,500,500);
} 
public void mouseClicked()
{
	redraw();
}
public void drawBranches(int x,int y, float branchLength, float angle) 
{
	if(branchLength>5)
	{
		int maxBranches = (int)(Math.random()*5)+1;
		for(int i=0;i<maxBranches;i++)
		{
			float angleAdd = (float)(Math.random()*PI*2.0/3.0)-(PI/3.0);
			float nowLength= (float)(branchLength*((Math.random()*0.4)+0.5));
			line(x,y,x+(int)(nowLength*Math.cos(angle+angleAdd)),y+(int)(nowLength*Math.sin(angle+angleAdd)));
			new Branch(x+(int)(nowLength*Math.cos(angle+angleAdd)),y+(int)(nowLength*Math.sin(angle+angleAdd)),nowLength,angle+angleAdd);
		}
	}
}
class Branch
{
	Branch(int x,int y,float branchLength,float angle)
	{

	}
}
