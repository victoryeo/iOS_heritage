//
//  XYZCountryTableViewCell.m
//  Heritage
//
//  Created by Sindhu on 11/22/14.
//  Copyright (c) 2014 whatis. All rights reserved.
//

#import "XYZCountryTableViewCell.h"

@implementation XYZCountryTableViewCell

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
    
    self.imageView.frame = CGRectMake(0, 0, 58, 42);
    self.imageView.frame = CGRectInset(self.imageView.frame, 10, 10);
    
    self.textLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.textLabel.numberOfLines = 0;
    self.textLabel.font = [UIFont fontWithName:@"Helvetica" size:17.0];    
}

@end
