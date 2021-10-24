#include <iostream>
#include "sample.h"

void sample()
{
#ifdef NDEBUG
    std::cout << "sample/0.2: Hello World Release!" << std::endl;
#else
    std::cout << "sample/0.2: Hello World Debug!" << std::endl;
#endif
}
