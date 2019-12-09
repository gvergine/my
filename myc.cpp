#include <iostream>
#include <fstream>

using namespace std;



int main(int argc, char *argv[])
{
	std::ifstream inputStream(argv[1]);
	std::ofstream outputStream(argv[2]);

	for(std::string line; getline( inputStream, line ); )
	{
	    std::cout << ':' << line << std::endl;
	}
	return 0;
}
