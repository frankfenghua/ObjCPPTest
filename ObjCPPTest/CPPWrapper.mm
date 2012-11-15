//
//  CPPWrapper.m
//  ObjCPPTest
//
//  Created by Joel Saltzman on 11/15/12.
//  Copyright (c) 2012 joelsaltzman.com. All rights reserved.
//  testing out code from http://robnapier.net/blog/wrapping-cppfinal-edition-759/comment-page-1#comment-16789

#include "Cpp.cpp"

@interface CPPWrapper : NSObject
@property (nonatomic, readwrite, copy) NSString *name;
@end

@interface CPPWrapper ()
@property (nonatomic, readwrite, assign) MY::Cpp *cpp;
@end


@implementation CPPWrapper
@synthesize cpp = _cpp;

- (id)init {
    self = [super init];
    if (self) {
        _cpp = new MY::Cpp();
    }
    return self;
}

- (void)dealloc {
    delete _cpp;
}

- (NSString *)name {
    return [NSString stringWithUTF8String:self.cpp->getName().c_str()];
}

- (void)setName:(NSString *)aName {
    self.cpp->setName([aName UTF8String]);
}
@end