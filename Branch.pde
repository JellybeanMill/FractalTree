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
