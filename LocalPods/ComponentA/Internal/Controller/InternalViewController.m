//
//  InternalViewController.m
//  Pods-YHComponentBasedDesign
//
//  Created by young on 2019/9/14.
//

#import "InternalViewController.h"
#import "InternalNextViewController.h"

@interface InternalViewController ()

@end

@implementation InternalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Internal";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"nextInternal" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(toNextInternal) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(100,200,180,50);
    [self.view addSubview:btn];
}

- (void)toNextInternal {
    [self.navigationController pushViewController:[InternalNextViewController new] animated:NO];
}

@end
