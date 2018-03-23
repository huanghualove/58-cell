//
//  ViewController.m
//  58到家动画模仿
//
//  Created by huanghhua on 2017/10/17.
//  Copyright © 2017年 huanghhua. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *TableView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [self.view addSubview:TableView];
    TableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    TableView.delegate = self;
    TableView.dataSource = self;
    [TableView registerClass:[TableViewCell class] forCellReuseIdentifier:@"TableViewCellid"];
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    for (TableViewCell *cell in TableView.visibleCells) {
        CGRect rect = [cell convertRect:cell.view.frame toView:self.view];
        CGFloat alpha = 1 - (rect.origin.y - 300) / 667;
//        alpha = alpha >= 1 ? 1 : alpha / 2;
        cell.view.alpha = alpha;
        CGFloat Scale = 1 - (rect.origin.y - 417) / 667;
        Scale = Scale > 1 ? 1 : Scale;
        cell.view.transform = CGAffineTransformMakeScale(Scale, Scale);
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 20;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCellid"];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 20;
}



@end
