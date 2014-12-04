//
//  XYZTableViewCell.m
//  Heritage
//
//  Created by Sindhu on 11/18/14.
//  Copyright (c) 2014 whatis. All rights reserved.
//

#import "XYZTableViewCell.h"

@implementation XYZTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.separatorInset = UIEdgeInsetsZero;

    //self.imageView.frame = CGRectMake(0, 0, 32, 32);
    self.imageView.frame = CGRectInset(self.imageView.frame, 5, 5);
}

@end
