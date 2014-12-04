//
//  XYZCountryTableViewController.h
//  Heritage
//
//  Created by Sindhu on 11/19/14.
//  Copyright (c) 2014 whatis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XYZCountryTableViewController : UITableViewController

@property NSString * selectedRegionName;
@property NSString * selectedContinentName;
@property NSString * selectedCountryName;

@property int selectedRegionRow;
@property int selectedContinentRow;
@property int selectedCountryRow;

- (IBAction)unwindToCountry:(UIStoryboardSegue *)segue;

@end
