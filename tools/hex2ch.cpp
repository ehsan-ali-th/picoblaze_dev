// This program converts picoblaze .hex file to SDK .h header file
// 
// Authors: 
//				- Ehsan Ali:		ehssan.aali@gmail.com
//				- Wanchalerm Pora	wanchalerm.p@chula.ac.th
// Last modfied: 21-Aug-2019
// Compile under linux: $ g++ -o hex2ch hex2ch.cpp
// Usage: $ ./hex2ch test.hex
// After runnging the program on a .hex file a .h header file with same name will be saved 
// in current working directory.

#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main (int argc, char *argv[]) 
{ 
  if (argc < 2) {
    cout << "Specify a filename as the first argument" << endl;
    return -1;
  }

  string input_filename = argv[1];

  cout << "Input File: " << input_filename << endl;

  // Extract the filename by removing the extension
  size_t lastindex = input_filename.find_last_of("."); 
  if (lastindex == string::npos) {
    cout << "No extension in filename is specified. " <<
      "Input filename must have .hex extension" << endl;
    return -2;
  }

  string rawname = input_filename.substr(0, lastindex);
  string output_filename = rawname + ".h";

  cout << "Converting " << input_filename << " to " << output_filename << " file" << endl;

  ifstream file_in(input_filename.c_str(), ios::in);
  ofstream file_out(output_filename.c_str(), ios::out);
  // stringstream tmp_stream(ios_base::in | ios_base::out);

  file_out << "u32 program_4k[4096] = {" << endl;

  string l; 
  string line;

  // Get the first line
  getline(file_in, l);
  if ( l.size() && l[l.size()-1] == '\r' ) {
    line = l.substr( 0, l.size() - 1 );
  }
  else {
    line = l;
  }
  file_out << "0x" << line << endl;

  // iterate through the remaining lines
  while (getline(file_in, l))
    {
       if ( l.size() && l[l.size()-1] == '\r' ) {
           line = l.substr( 0, l.size() - 1 );
       }
       else {
           line = l;
       }
       file_out << "," << "0x" << line << endl;
    }
 
  file_out << "};" << endl;

  cout << "Done" << endl;
    
  return 0;
  
    
  /*  std::ifstream file("Read.txt");
  std::string str; 
  while (std::getline(file, str))
    {
      // Process str
      }*/
}
