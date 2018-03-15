//
//  ViewController.m
//  TableViewTask
//
//  Created by user on 14/03/18.
//  Copyright © 2018 user. All rights reserved.
//

#import "TableViewHomeScreen.h"
#import "CustomTableViewCell.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>{
    NSMutableArray *nameArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self arraySetup];
}

- (void) arraySetup{
    nameArray =[NSMutableArray arrayWithArray:@[@"1.First row",@"2.Second row",@"3.Third row",@"4.Fourth row",@"5.Fith row"]];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return nameArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellId = @"cellRow";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    cell.nameLabelView.text = nameArray[indexPath.row];
    cell.cellImageView.image = [UIImage imageNamed:@"AppIcon"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
