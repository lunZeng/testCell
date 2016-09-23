//
//  TableViewController.m
//  testCell
//
//  Created by 曾广伦 on 16/9/22.
//  Copyright © 2016年 lun. All rights reserved.
//

#import "TableViewController.h"

#import "TableViewCell.h"

#import "TableMoedel.h"

#import "MJRefresh.h"

@interface TableViewController ()


@property (nonatomic, strong) NSArray *name;
@property (nonatomic, strong) NSArray *detail;
@property (nonatomic, strong) NSArray *headPhoto;

@property (nonatomic, strong) NSMutableArray *array;

@property (nonatomic, strong) NSArray *pArray;








@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    [self loadData];
    
    self.pArray =[NSArray arrayWithObjects:@"p1",@"p2",@"p3",@"p1",@"p2",@"p3" ,nil];
    
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadNewData)];
    
    //[self.tableView.header beginRefreshing];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadNewData{
    
    NSLog(@"load new data");
    [self.tableView.mj_header endRefreshing];

}


- (void)loadData{
    self.headPhoto = [NSArray arrayWithObjects:@"0",@"1",@"2" ,nil];
    self.name = [NSArray arrayWithObjects:@"Jack",@"Petter",@"Allen", nil];
    self.detail = [NSArray arrayWithObjects:
                   @"asdjiiiiiiaslfjsdjfdfsd",
                   
                   @"asjlfkkkklskkkf;jsdifokjnkhbjeiojosgjlsjogijejowjgjooofof odslfjdsosjois",
                   @"sdfjoneonbtnbtorenbtuerotuouturituirutiutiuiuiuefdkflskofksfokofowkowowkdokokfofjgoigowuwwuduedueudheuhdhudehduehduehudheudhuehdueduhehduehduehudeudhuehduehduehudeudhuehduehudehudehdueueencncidnicndincindincindicnidncidncidicndcnidincidcidnicdncidncidncdn", nil];
    
    self.array = [NSMutableArray array];
    
    for (int i=0; i<3; i++) {
        
        TableMoedel *model = [TableMoedel alloc];
        
        model.picName = self.headPhoto[i];
        model.name = self.name[i];
        model.detail = self.detail[i];
        
        
        [self.array addObject:model];
        
    }
    NSLog(@"array:%@",self.array);
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return self.array.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableCell" forIndexPath:indexPath];
    
    [cell.headImageView setImage:[UIImage imageNamed:self.headPhoto[indexPath.row]]];
    
    cell.nameLabel.text = self.name[indexPath.row];
    cell.detailLabel.text = self.detail[indexPath.row];
    
    
    cell.photoArray = self.pArray;
    NSLog(@"p%@",cell.photoArray);
    
    [cell.bt0 setBackgroundImage:[UIImage imageNamed:self.pArray[0]] forState:UIControlStateNormal];
    
    [cell.bt1 setBackgroundImage:[UIImage imageNamed:self.pArray[1]] forState:UIControlStateNormal];
    
    [cell.bt2 setBackgroundImage:[UIImage imageNamed:self.pArray[2]] forState:UIControlStateNormal];
    
    //这里是设置单元格默认的行高，就是会根据自己的计算来获得实际高度;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    //这里是设置单元格的预判高度，根据自己的预估单元格的平均高度随便填写一个就行。
    self.tableView.estimatedRowHeight = 100;

    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
