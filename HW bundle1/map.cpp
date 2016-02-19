#include <iostream>
#include <string>
using namespace std;

class Room {
public:
	string description;	
	bool canGoNorth;
	bool canGoEast;
	bool canGoSouth;
	bool canGoWest;
};


int main() 
{
//global variables:
	// a string to store player input
	string input;
	// 2 variables to store player position, x and y
	int x = 1;
	int y = 1;
	// a 2D array to store our map
	Room map[5][6];


	for (int i = 0; i < 5; i++) {
		for (int j = 0; j < 6; j++) {
			map[j][i].description = "There's nothing here!";	
			map[j][i].canGoNorth = false;
			map[j][i].canGoEast = false;	
			map[j][i].canGoWest = false;
			map[j][i].canGoSouth = false;	
		}
	}

	map[0][1].description = "Here lies a chocolate chip cookie.";
	map[2][0].description = "You crane your neck skyward to see the grand Empire State Building up among the clouds! You feel dizzy.";

	map[1][1].description = "There's a path going east and west.";
	map[1][1].canGoWest = true;
	map[1][1].canGoEast = true;
//end of Given in class code

	//end line 2
	
	//map[][2].canGoWest = true;

	//game loop will a 'while' loop
	while (input != "q") {
		//check for the exit condition
		// map[x][y] = '_';
		cout << "you are at " << x << " " << y << endl;
		cout << map[x][y].description << endl;		
		cout << "Which direction?" << endl;
		cin >> input; /// go north // pick up letter


		if (input == "NORTH") {
			if (map[x][y].canGoNorth == true) {
				y--;
			} else {
				cout << "you can't go that way! you fool!" << "\n\n";
			}
		} else if (input == "EAST") {
			if (map[x][y].canGoEast == true) {
				x++;
			} else {
				cout << "you can't go that way!\n\n";
			}
		} else if (input == "SOUTH") {
			if (map[x][y].canGoSouth == true) {
				y++;				
			} else {
				cout << "you can't go that way!\n\n";
			}
		} else if (input == "WEST") {
			if (map[x][y].canGoWest == true) {
				x--;				
			} else {
				cout << "NO!\n\n";
			}
		} else {
			cout << "I don't understand " << input << "\n";
		}



	}
		
	/*map[x][y] = 'o';

	 	for (int i = 0; i < 10; i++) {
	 		for (int j = 0; j < 10; j++) {
	 			cout << map[j][i] << "|";
	 		}
	 		cout << endl;
	 	}
	 }*/
	return 0;
}