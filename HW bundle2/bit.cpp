#include <iostream>
#include <fstream>
using namespace std;


int writeBytes(int offset, unsigned char data[]);

int main() {
	// ifstream map("blankbmp.bmp");
	ifstream map("map.bmp");
	unsigned char data; //variable to store temporary bytes

	const int BMPSIZE = 928;	//actual size in bytes of the bmp file
	int mod = BMPSIZE / 5;
	unsigned char bmpBytes[BMPSIZE];	//array of 8-bit integers to store our bytes
	int newitem = 0;
	int whichByte = 0;
	while (map >> data) {		
		//as long as the file has bytes, plug it into the array
		bmpBytes[whichByte] = data;
		whichByte++;
		if(whichByte % 2){
			newitem++;
		cout << BMPSIZE << endl;
	cout << mod << endl;
	cout << newitem << endl;
		cout << whichByte << endl;
		
		}
		
	}

	map.close();
	
	
	return 0;
	}
	