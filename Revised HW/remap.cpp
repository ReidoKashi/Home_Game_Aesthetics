#include <iostream>
#include <string>
using namespace std;

class treasure{
public:
bool hasT;
bool hasC;
string descriptionT;	
	
}


//given code***//given code***//given code***//given code***//given code***//given code***//given code***
class Room {
public:
	string description;	
	bool canGoNorth;
	bool canGoEast;
	bool canGoSouth;
	bool canGoWest;
};
//given code***//given code***//given code***//given code***

int main() 
{
	//given code***//given code***//given code***//given code***//given code***//given code***
	//global variables:
	// a string to store player input
	string input;
	// 2 variables to store player position, x and y
	int x = 2;
	int y = 2;
	// a 2D array to store our map
	Room map[5][5];


	for (int i = 0; i < 5; i++) {
		for (int j = 0; j < 5; j++) {
			map[j][i].description = "There's nothing here!";	
			map[j][i].canGoNorth = false;
			map[j][i].canGoEast = false;	
			map[j][i].canGoWest = false;
			map[j][i].canGoSouth = false;	
		}
	}

	
	// my code------------------
	//starting point
	map[2][2].description = "All around you is darkness, but suble noises, and lights come in and out.";
	map[2][2].canGoWest = true;
	map[2][2].canGoEast = true;
	map[2][2].canGoSouth = true;
	map[2][2].canGoNorth = true;

	// line 0 I'm going about this line by line
	map[2][0].description = "The Lizards comes out of the darkness and grabs you ahhhh, you pass out";
	map[2][0].canGoSouth = true;
	map[2][0].canGoNorth = true;
	// line 1 I'm going about this line by line
	map[2][1].description = "You take a step forward, and hear something slithering ahead, do you take a step forward";
	map[2][1].canGoSouth = true;
	map[2][1].canGoNorth = true;
	// line 2 I'm going about this line by line
	map[1][2].description = "You take a step the West and you hear discrete giggling, and can see two walls aside you due to glimmering light ahead";
	map[1][2].canGoWest = true;
	map[1][2].canGoEast = true;
	//-
	map[0][2].description = "You come to a corridor only to smell and amazing aroma coming from the dim light up ahead";
	map[0][2].canGoSouth = true;
	map[0][2].canGoEast = true;
	//-
	map[3][2].description = "Taking a step to the right of the corrider you hear a something gnarling at your feet what do you do"; 
	map[3][2].canGoEast = true;
	map[3][2].canGoWest = true;

	map[4][2].description = "Your ambushed by a pack of wild spiders, and faint";


	// line 3

	map[2][3].description = "You hear cackling up ahead do you move forward";
	map[2][3].canGoSouth = true;
	map[2][3].canGoNorth = true;
	//--
	map[0][3].description = "You hear cackling up ahead do you move forward";
	map[0][3].canGoSouth = true;
	map[0][3].canGoNorth = true;

	// line 4

	map[2][4].description = "Upon stepping into the corridor you hear a scary laughter, but up ahead you smell something amazing";
	map[2][4].canGoWest = true;
	map[2][4].canGoNorth = true;

	map[1][4].description = "The laughter is gets louder, and the light gets stronger, do you step in";
	map[1][4].canGoWest = true;
	map[1][4].canGoEast = true;
	
	map[0][4].description = "The laughter get's louder and step into heated caver, only to find a portly oven engineer, testing out his oven and laughing manicallly!";
	map[0][4].canGoEast = true;
	map[0][4].canGoNorth = true;
	



//given code***//given code***//given code***//given code***//given code***//given code***//given code***//given code***//given code***
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
//given code***//given code***//given code***//given code***//given code***//given code***//given code***//given code***
	


	return 0;
}