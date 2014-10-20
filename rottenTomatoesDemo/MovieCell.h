//
//  MovieCell.h
//  rottenTomatoesDemo
//
//  Created by Sumeet Ungratwar on 10/15/14.
//  Copyright (c) 2014 Sumeet Ungratwar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *posterView;

@end
