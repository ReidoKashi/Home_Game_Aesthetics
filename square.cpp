#include <iostream>
#include <string>
using namespace std;


int main()

{
	const int _x = 10;
	const int _y = 10;

	char grid[_x][_y];

	int x = 0;
	while ( x <= 9)
	{ 
		if(x == 0) 
		{ 
			for(int y = 0;y < 18 ;y++)
			{grid[_x][_y] = '-';
					cout << grid[_x][_y];
					

			}
			cout << endl;
		}
		
			
			for(int x = 0;x < 8;x++)
			{cout << "|";
				for(int y = 0;y < 16;y++)
				{
		
					grid[_x][_y] = ' ';
					cout << grid[_x][_y];
					
		
					
			
				}
				cout << "|";
				cout << endl;
			}

		for(int y = 0;y < 18 ;y++)
			{grid[_x][_y] = '-';
					cout << grid[_x][_y];
					

			}
			cout << endl;
		
		

      return 0;
	}










	return 0;
}