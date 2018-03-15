//
//  HomeScreenViewController.m
//  TableViewTask
//
//  Created by user on 15/03/18.
//  Copyright © 2018 user. All rights reserved.
//

#import "HomeScreenViewController.h"
#import "CustomTableViewCell.h"
#import "UserDetailsViewController.h"

@interface HomeScreenViewController (){
    NSMutableString *socialAccountName;
    NSMutableArray *socialAccountNamesArray;
}
@end
int imageId=1;
@implementation HomeScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    nameArray = [[NSMutableArray alloc]init];
    imageArray = [[NSMutableArray alloc]init];
    socialAccountArray =[[NSMutableArray alloc]init];
    createdAtArray=[[NSMutableArray alloc]init];
    [self arraySetup];
}

- (void) arraySetup{
    //nameArray =[NSMutableArray arrayWithArray:@[@"User 1",@"User 2",@"User 3",@"User 4",@"User 5"]];
    
    socialAccountNamesArray = [NSMutableArray arrayWithArray:@[@"Cloud",@"FaceBook",@"GitHub",@"Flicker",@"Pinterest"]];
    for (int i=0 ;i<300; i++)
        [nameArray addObject:[NSString stringWithFormat:@"User %d", i+1]];
    for (int i=0 ;i<300;i++){
        if(imageId == 6)
            imageId=1;
        [imageArray addObject:[NSString stringWithFormat:@"userSocialIcon%d",imageId]];
        socialAccountName = socialAccountNamesArray[imageId-1];
        [socialAccountArray addObject:socialAccountName];
        NSLog(@"%@",socialAccountArray[i]);
        imageId++;
    }
    
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
    cell.cellImageView.image = [UIImage imageNamed:imageArray[indexPath.row]];
    cell.socialLabelView.text = socialAccountArray[indexPath.row];
    cell.createdAt.text = [self currentTime];
    [createdAtArray addObject:[self currentTime]];
    cell.layer.borderWidth = 2;
    cell.layer.borderColor = [UIColor whiteColor].CGColor;
    return cell;
}

-(NSString *) currentTime{
    NSDate * now = [NSDate date];
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setDateFormat:@"hh:mm:ss a"];
    NSString *newDateString = [outputFormatter stringFromDate:now];
    return newDateString;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UserDetailsViewController * userDetailsViewController = [storyboard instantiateViewControllerWithIdentifier:@"userDetailsViewController"];
    //    userDetailsViewController.userImageView = imageArray[indexPath.row];
    userDetailsViewController.userNameNSString = nameArray[indexPath.row];
    userDetailsViewController.userImageNSString = imageArray[indexPath.row];
    userDetailsViewController.userSocialAccountNSString = socialAccountArray[indexPath.row];
    userDetailsViewController.userCreatedAtNSString = createdAtArray[indexPath.row];
    [self.navigationController pushViewController:userDetailsViewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
