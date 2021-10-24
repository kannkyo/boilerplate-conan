#include "Poco/MD5Engine.h"
#include "Poco/DigestStream.h"

#include <iostream>

void md5echo()
{
    Poco::MD5Engine md5;
    Poco::DigestOutputStream ds(md5);
    ds << "abcdefghijklmnopqrstuvwxyz";
    ds.close();
    std::cout << Poco::DigestEngine::digestToHex(md5.digest()) << std::endl;
}