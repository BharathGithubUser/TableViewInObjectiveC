//
//  UserDetailsViewController.m
//  TableViewTask
//
//  Created by user on 15/03/18.
//  Copyright © 2018 user. All rights reserved.
//

#import "UserDetailsViewController.h"

@interface UserDetailsViewController ()

@end

@implementation UserDetailsViewController
@synthesize userNameNSString,userImageNSString,userSocialAccountNSString,userCreatedAtNSString;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.userNameLabelView.text = userNameNSString;
    self.userImageView.image = [UIImage imageNamed:userImageNSString];
    _userSocialAccountLabelView.text = userSocialAccountNSString;//without self keyword we can use _    _userCreatedAtLabelView.text = userCreatedAtNSString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
