//
//  XYZRegionTableViewController.h
//  Heritage
//
//  Created by Sindhu on 11/18/14.
//  Copyright (c) 2014 whatis. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol XYZRegionTableViewControllerDelegate <NSObject>
@required
-(void)done;
@end

@interface XYZRegionTableViewController : UITableViewController

/*{ id delegate; }*/

@property NSString * selectedContinentName;
@property NSString * selectedRegionName;

@property int selectedContinentRow;
@property int selectedRegionRow;

/*@property(nonatomic, assign) id<XYZRegionTableViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;*/

- (IBAction)unwindToRegion:(UIStoryboardSegue *)segue;

@end
