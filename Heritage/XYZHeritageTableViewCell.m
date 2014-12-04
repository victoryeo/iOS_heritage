//
//  XYZHeritageTableViewCell.m
//  Heritage
//
//  Created by Sindhu on 11/23/14.
//  Copyright (c) 2014 whatis. All rights reserved.
//

#import "XYZHeritageTableViewCell.h"

@implementation XYZHeritageTableViewCell

@synthesize year = yearLabel;

- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier {
	if (self = [super initWithFrame:frame reuseIdentifier:reuseIdentifier]) {
		// Initialization code
        
	}
    
	return self;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        // we need a view to place our labels on.
		UIView *myContentView = self.contentView;
        
        self.year.textAlignment = NSTextAlignmentCenter; // default
		[myContentView addSubview:self.year];
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
    
    // getting the cell size
    CGRect contentRect = self.contentView.bounds;
    CGFloat boundsX = contentRect.origin.x;
    CGRect frame;
    frame = CGRectMake(boundsX + 10, 4, 200, 20);
    self.year.frame = frame;
    
    //self.year = [[UILabel alloc] initWithFrame:CGRectMake(200, 8, 50, 50)];
    //self.year.text = @"year";
    //self.year.enabled = NO;
    //self.year.autocorrectionType = UITextAutocorrectionTypeNo;
    //[self.year setClearButtonMode:UITextFieldViewModeWhileEditing];
    self.year.font = [UIFont fontWithName:@"Helvetica" size:17.0];
    //self.accessoryView = self.year;
    //[self addSubview:self.year];
}

@end
