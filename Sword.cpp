#include <iostream>
#include <string>

using namespace std;

int main()
{
	// invisible grid container begins**
	const int XB = 10;
	const int YB = 50;
	char grid[XB][YB];

	for(int i = 0;i < XB;i++)
	{
		for(int m = 0;m < YB;m++)
			{
				grid[i][m] = '-';
			}	
		
	}

	
	int x = 1;
	int y = 25;
	char input;
	while(input != 'q')
	{

	

	 //invisible grid container ends**



	// sword illustration initiator starts here begins**
	//blade begin
	grid[x-1][y-2] = '^' ;
	grid[x][y-1] = '|';
	grid[x][y-3] = '|';
	grid[x-1][y-1] = '|';
	grid[x-1][y-3] = '|';
	grid[x+3][y-3] = '|';
	grid[x+3][y-1] = '|';
	grid[x+4][y-3] = '|';
	grid[x+4][y-1] = '|';
	grid[x+2][y-1] = '|';
	grid[x+2][y-3] = '|';
	grid[x+1][y-1] = '|';
	grid[x+1][y-3] = '|';
	grid[x-1][y-1] = '|';
	grid[x+5][y-1] = '=';
	grid[x+5][y-2] = '=';
	grid[x+5][y-3] = '=';
	grid[x+5][y-4] = '=';
	grid[x+5][y] = '=';
	grid[x+5][y-5] = '=';
	grid[x+5][y+1] = '=';
	grid[x+6][y-2] = '=';
	grid[x+7][y-2] = '=';
	grid[x+8][y-2] = 'o';
	//blade end
	/*grid[x+1][y-1] = '|';
	
	grid[x+1][y+2] = '|';
	grid[x+2][y] = '|';
	grid[x+3][y] = '|';
	grid[x+4][y] = '|';
	grid[x+2][y+1] = '|';
	grid[x+3][y+2] = '|';
	grid[x+4][y+3] = '|';*/
	for(int i = 0;i < XB;i++)	
	{
		for(int m = 0;m < YB;m++)
			{
				cout << grid[i][m];
			}	cout << endl;

	}


	cout << x << endl;
		cout << y << endl;
	// sword illustration initiator starts here begins**
	cin >> input;
	}
	return 0;
}