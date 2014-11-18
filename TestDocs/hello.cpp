// 'Hello World!' program 
 
#include <iostream>
 
int main()
{
  std::cout << "Hello World!" << std::endl;
//strncat //     1     (e.g., incorrectly computing the correct maximum size to add) (CWE-120)
//strncpy //     1     Easily used incorrectly; doesn't always \0-terminate or check for invalid pointers (CWE-120)
//strtrns      //3     This function does not protect against buffer overflows (CWE-120)
/*swprintf
system     
system
vfprintf //     4     If format strings can be influenced by an attacker, they can be exploited (CWE-134)
vfscanf     //4     
syslog
*/
return 0;
}

