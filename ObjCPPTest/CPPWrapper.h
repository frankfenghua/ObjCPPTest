//
//  CPPWrapper.h
//  ObjCPPTest
//
//  Created by Joel Saltzman on 11/15/12.
//  Copyright (c) 2012 joelsaltzman.com. All rights reserved.
//
#include "Cpp.cpp"

@interface CPPWrapper : NSObject
@property (nonatomic, readwrite, copy) NSString *name;
@end

@interface CPPWrapper ()
@property (nonatomic, readwrite, assign) MY::Cpp *cpp;
@end