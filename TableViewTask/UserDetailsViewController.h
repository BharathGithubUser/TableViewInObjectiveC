//
//  UserDetailsViewController.h
//  TableViewTask
//
//  Created by user on 15/03/18.
//  Copyright © 2018 user. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserDetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *userImageView;
@property (weak, nonatomic) IBOutlet UILabel *userNameLabelView;
@property (weak, nonatomic) IBOutlet UILabel *userSocialAccountLabelView;
@property (weak, nonatomic) IBOutlet UILabel *userCreatedAtLabelView;

@property (weak,atomic) NSString *userNameNSString;
@property (weak,atomic) NSString *userImageNSString;
@property (weak,atomic) NSString *userSocialAccountNSString;
@property (weak,atomic) NSString *userCreatedAtNSString;
@end
