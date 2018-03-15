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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _userNameLabelView.text = _userNameNSString;
    _userImageView.image = [UIImage imageNamed:_userImageNSString];
    _userSocialAccountLabelView.text = _userSocialAccountNSString;
    _userCreatedAtLabelView.text = _userCreatedAtNSString;
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
