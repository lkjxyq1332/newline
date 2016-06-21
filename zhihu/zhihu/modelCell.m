//
//  modelCell.m
//  zhihu
//
//  Created by yuan quan on 16/5/1.
//  Copyright © 2016年 yuan quan. All rights reserved.
//

#import "modelCell.h"

@implementation modelCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+(instancetype)cellForTableView:(UITableView*)tableView{
    modelCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" ];
    if (!cell) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"modelcell" owner:nil options:nil]lastObject];
    }
    return cell;
  
}


@end
