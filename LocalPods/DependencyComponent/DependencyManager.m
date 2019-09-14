//
//  DependencyManager.m
//  DependencyComponent
//
//  Created by young on 2019/9/14.
//

#import "DependencyManager.h"

typedef id(^DependencyBlock)(void);

static NSMutableDictionary <NSString *, DependencyBlock> *protocolDict;

@implementation DependencyManager

+ (void)registerProtocol:(Protocol *)protocol
                   block:(id (^)(void))block {
    NSCParameterAssert(block != NULL);
    NSString *key = NSStringFromProtocol(protocol);
    if (protocolDict == nil) {
        protocolDict = [[NSMutableDictionary alloc] init];
    }
    NSAssert(protocolDict[key] == nil, @"");
    [protocolDict setObject:[block copy] forKey:key];
}

+ (nullable id)getObjectByProtocol:(Protocol *)protocol {
    NSString *key = NSStringFromProtocol(protocol);
    DependencyBlock block = protocolDict[key];
    if (block != NULL) {
        return block();
    }
    return nil;
}

@end
