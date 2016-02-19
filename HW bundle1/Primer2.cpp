
#include <iostream>
#include <cctype>
#include <string>

using namespace std;

// here we will use:

	// getline(cin, stringVariable)	- we'll have a problem if we want to use "cin >>" to get multiple strings..
	//								- by default it will only grab the first one we input on any line.
	//								- getline is a way we can grab the whole thing.


//int main() 
//{	
//	// "cin" is no good with multiple words! we want multiple commands to parse.
//	// what happens if we combine cin and getline()?
//	cout << "write at least two words: ";
//	string answer;
//	cin >> answer;
//	cout << "\nFirst word was " << answer << "\n";
//	getline(cin, answer);
//	cout << "followed by: " << answer << "\n";
//
//	return 0;
//}


int main() {

	
	string input;

	cout << "testing put in somthing";

	getline(cin,input);

	cout << "a new test" << input << "\n";

	for (int i = 0;i < input.size(); i++ ) 

	{ input.at(i) = toupper(input.at(i));

	}



cout << "this is in all caps" << input << "\n";





}