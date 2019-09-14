//
//  ViewController.m
//  YHComponentBasedDesign
//
//  Created by young on 2019/9/14.
//  Copyright © 2019 young. All rights reserved.
//

#import "ViewController.h"

@import YHPublic;

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSArray *datas;

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Root";

    self.datas = @[@"toPublickController"];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 84, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 84) style:UITableViewStylePlain];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        cell.textLabel.textColor = [UIColor blackColor];
    }
    cell.textLabel.text = self.datas[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    NSString *selString = self.datas[indexPath.row];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    [self performSelector:NSSelectorFromString(selString)];
#pragma clang diagnostic pop
}

- (void)toPublickController {
    PublicViewController *publicVC = [[PublicViewController alloc] init];
    [self.navigationController pushViewController:publicVC animated:YES];
}

@end
