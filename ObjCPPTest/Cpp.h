//
//  Cpp.h
//  ObjCPPTest
//
//  Created by Joel Saltzman on 11/15/12.
//  Copyright (c) 2012 joelsaltzman.com. All rights reserved.
//
#include <string.h>

//namespace MY {
class Cpp {
public:
    std::string getName();
    void setName(std::string aName)};
private:
    std::string _name;
};
//}