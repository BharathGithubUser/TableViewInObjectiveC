//
//  CustomTableViewCell.h
//  TableViewTask
//
//  Created by user on 15/03/18.
//  Copyright © 2018 user. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabelView;
@property (weak, nonatomic) IBOutlet UILabel *socialLabelView;
@property (weak, nonatomic) IBOutlet UILabel *createdAt;

@end
