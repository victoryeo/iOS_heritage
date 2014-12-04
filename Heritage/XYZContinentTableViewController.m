//
//  XYZContinentTableViewController.m
//  Heritage
//
//  Created by Sindhu on 11/18/14.
//  Copyright (c) 2014 whatis. All rights reserved.
//

#import "XYZContinentTableViewController.h"
#import "XYZContinentItem.h"

#import "XYZRegionTableViewController.h"

#import "XYZTableViewCell.h"

@interface XYZContinentTableViewController ()

@property NSMutableArray *continentItems;

@property NSString * selectedName;

@property int selectedRow;

@end

@implementation XYZContinentTableViewController

- (IBAction)unwindToContinent:(UIStoryboardSegue *)segue
{
    printf("aa");
}

- (void)loadInitialData {
    XYZContinentItem *item1 = [[XYZContinentItem alloc] init];
    item1.itemName = @"Africa";
    item1.itemImage = @"africa";
    [self.continentItems addObject:item1];
    XYZContinentItem *item2 = [[XYZContinentItem alloc] init];
    item2.itemName = @"America";
    item2.itemImage = @"america";
    [self.continentItems addObject:item2];
    XYZContinentItem *item3 = [[XYZContinentItem alloc] init];
    item3.itemName = @"Asia";
    item3.itemImage = @"asia";
    [self.continentItems addObject:item3];
    
    XYZContinentItem *item4 = [[XYZContinentItem alloc] init];
    item4.itemName = @"Europe";
    item4.itemImage = @"europe";
    [self.continentItems addObject:item4];
    
    XYZContinentItem *item5 = [[XYZContinentItem alloc] init];
    item5.itemName = @"Oceania";
    item5.itemImage = @"oceania";
    [self.continentItems addObject:item5];
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    self.continentItems = [[NSMutableArray alloc] init];
    
    [self loadInitialData];
    
    // disable separator
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.continentItems count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    XYZTableViewCell *cell = (XYZTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    
    XYZContinentItem *continentItem = [self.continentItems objectAtIndex:indexPath.row];
    
    cell.textLabel.text = continentItem.itemName;
    
    /*NSString *path = [[NSBundle mainBundle] pathForResource:@"africa" ofType:@"png" inDirectory:@"images"];
    UIImage *image = [UIImage imageWithContentsOfFile:path];
    cell.imageView.image = image;*/
    
    /*UIImage *theImage = [UIImage imageWithContentsOfFile:@"images/"+continentItem.itemImage];
    cell.imageView.image = theImage;*/
    
    /*NSString *imageFile = [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] resourcePath], continentItem.itemImage];
    UIImage* theImage = [UIImage imageWithContentsOfFile:imageFile];
    cell.imageView.image = theImage;*/
    
    // add separator per cell
    UIView * separatorView = [[UIView alloc] initWithFrame:CGRectMake(0, cell.frame.size.height-1, cell.frame.size.width, 1)];
    [separatorView setBackgroundColor:[UIColor lightGrayColor]];
    [separatorView setAlpha:0.8f];
    [cell addSubview:separatorView];
    
    UIImage *theImage = [UIImage imageNamed:continentItem.itemImage];
    cell.imageView.image = theImage;
    
    //cell.imageView.image = [UIImage imageNamed:@"africa.png"];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    XYZContinentItem *tappedItem = [self.continentItems objectAtIndex:indexPath.row];
    
    //printf("%s", [tappedItem.itemName UTF8String]);
    
    self.selectedName = tappedItem.itemName;
    self.selectedRow = indexPath.row;

    [self performSegueWithIdentifier:@"UserShowSegue" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    /*if ([[segue identifier] isEqualToString:@"UnwindToRegionSegue"])
    {
        UINavigationController *nav = segue.destinationViewController;
        XYZRegionTableViewController *vc = (XYZRegionTableViewController *)nav.topViewController;
        vc.delegate = self;
        return;
    }*/
    
    UINavigationController *nav = segue.destinationViewController;
    XYZRegionTableViewController *vcToPushTo = (XYZRegionTableViewController *)nav.topViewController;
    
    vcToPushTo.selectedContinentName = self.selectedName;
    
    vcToPushTo.selectedContinentRow = self.selectedRow;

}

/* - (void) done
{
    [self dismissViewControllerAnimated:YES completion:^{
        NULL;
    }];
}*/

@end
