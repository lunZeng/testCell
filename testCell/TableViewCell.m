//
//  TableViewCell.m
//  testCell
//
//  Created by 曾广伦 on 16/9/22.
//  Copyright © 2016年 lun. All rights reserved.
//

#import "TableViewCell.h"


@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    //self.headImageView.backgroundColor = [UIColor blueColor];

    NSLog(@"photo:%@",self.photoArray);


}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)action0:(id)sender{
    
    SDPhotoBrowser *browser = [[SDPhotoBrowser alloc] init];
    browser.sourceImagesContainerView = self; // 原图的父控件
    browser.imageCount = self.photoArray.count; // 图片总数
    browser.currentImageIndex = 0;
    browser.delegate = self;
    [browser show];
}

- (IBAction)action1:(id)sender{
    SDPhotoBrowser *browser = [[SDPhotoBrowser alloc] init];
    browser.sourceImagesContainerView = self; // 原图的父控件
    browser.imageCount = self.photoArray.count; // 图片总数
    browser.currentImageIndex = 1;
    browser.delegate = self;
    [browser show];
    
    
}

- (IBAction)action2:(id)sender{
    SDPhotoBrowser *browser = [[SDPhotoBrowser alloc] init];
    browser.sourceImagesContainerView = self; // 原图的父控件
    browser.imageCount = self.photoArray.count; // 图片总数
    browser.currentImageIndex = 2;
    browser.delegate = self;
    [browser show];
    
    
}


#pragma mark - photobrowser代理方法

// 返回临时占位图片（即原来的小图）
- (UIImage *)photoBrowser:(SDPhotoBrowser *)browser placeholderImageForIndex:(NSInteger)index
{
    NSLog(@"%ld",(long)index);
    return [UIImage imageNamed:self.photoArray[index]];
}

@end
