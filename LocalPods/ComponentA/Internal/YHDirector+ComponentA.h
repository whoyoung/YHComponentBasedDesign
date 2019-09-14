//
//  YHDirector+ComponentA.h
//  YHPublic
//
//  Created by young on 2019/9/14.
//

@import DirectorComponent;
@import YHPublic;

NS_ASSUME_NONNULL_BEGIN

@interface YHDirector (ComponentA) <YHDirectorProtocolCompontA>

- (void)enterInternalVC:(nullable UINavigationController *)nav;

@end

NS_ASSUME_NONNULL_END
