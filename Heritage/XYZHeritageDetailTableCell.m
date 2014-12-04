//
//  XYZHeritageDetailTableCell.m
//  Heritage
//
//  Created by Sindhu on 11/23/14.
//  Copyright (c) 2014 whatis. All rights reserved.
//

#import "XYZHeritageDetailTableCell.h"

@implementation XYZHeritageDetailTableCell

@synthesize nameLabel = _nameLabel;
@synthesize typeLabel = _typeLabel;
@synthesize yearLabel = _yearLabel;
@synthesize thumbnailImageView = _thumbnailImageView;


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
    
    //self.thumbnailImageView.frame = CGRectMake(0, 0, 58, 42);
    //self.thumbnailImageView.frame = CGRectInset(self.imageView.frame, 10, 10);
    
    self.nameLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.nameLabel.numberOfLines = 0;
    self.nameLabel.font = [UIFont fontWithName:@"Helvetica" size:17.0];
    
    //self.year = [[UILabel alloc] initWithFrame:CGRectMake(200, 8, 50, 50)];
    //self.year.text = @"year";
    //self.year.enabled = NO;
    //self.year.autocorrectionType = UITextAutocorrectionTypeNo;
    //[self.year setClearButtonMode:UITextFieldViewModeWhileEditing];
    self.yearLabel.font = [UIFont fontWithName:@"Helvetica" size:17.0];
    //self.accessoryView = self.year;
    //[self addSubview:self.year];
}


@end
