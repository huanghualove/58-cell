//
//  TableViewCell.m
//  58到家动画模仿
//
//  Created by huanghhua on 2017/10/17.
//  Copyright © 2017年 huanghhua. All rights reserved.
//

#import "TableViewCell.h"

@interface TableViewCell ()

@end

@implementation TableViewCell



- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 375, 100)];
        self.view.backgroundColor = [UIColor redColor];
        self.view.layer.cornerRadius = 5;
        self.view.layer.borderColor = [UIColor blackColor].CGColor;
        self.view.layer.borderWidth = 1;
        self.view.center = CGPointMake(375 / 2, 50);
        [self.contentView addSubview:self.view];
    }
    self.contentView.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
