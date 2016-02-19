#include <string>
#include <iostream>
#include <cctype>
using namespace std;

int main

{
string answer = "answer instead of just one";


for (int i = 0; i < answer.size(); i++)
{ answer.at(i) = toupper(answer.at(i));
cout << answer.at(i) << "/n";
}



return 0;
}