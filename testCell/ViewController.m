//
//  ViewController.m
//  testCell
//
//  Created by 曾广伦 on 16/9/22.
//  Copyright © 2016年 lun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goToTableViewContrller:(id)sender{
    
    [self performSegueWithIdentifier:@"goToTableView" sender:self];
    
}


@end
