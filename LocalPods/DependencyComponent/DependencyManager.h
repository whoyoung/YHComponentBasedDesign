//
//  DependencyManager.h
//  DependencyComponent
//
//  Created by young on 2019/9/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#define YHRegisterDependency(aProtocol, ...) \
[DependencyManager registerProtocol:@protocol(aProtocol) block:__VA_ARGS__]

#define YHGetDependency(aProtocol) [DependencyManager getObjectByProtocol:@protocol(aProtocol)]

@interface DependencyManager : NSObject

+ (void)registerProtocol:(nonnull Protocol *)protocol
                   block:(nonnull id (^)(void))block;

+ (nullable id)getObjectByProtocol:(Protocol *)protocol;

@end

NS_ASSUME_NONNULL_END
