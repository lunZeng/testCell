//
//  TableViewCell.h
//  testCell
//
//  Created by 曾广伦 on 16/9/22.
//  Copyright © 2016年 lun. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SDPhotoBrowser.h"


@interface TableViewCell : UITableViewCell<SDPhotoBrowserDelegate>


@property (weak, nonatomic) IBOutlet UIImageView *headImageView;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@property (nonatomic,weak) IBOutlet UIView *bowseriew;

@property (nonatomic, strong) NSArray *photoArray;


@property (nonatomic, weak) IBOutlet UIButton *bt0;
@property (nonatomic, weak) IBOutlet UIButton *bt1;
@property (nonatomic, weak) IBOutlet UIButton *bt2;





@end
