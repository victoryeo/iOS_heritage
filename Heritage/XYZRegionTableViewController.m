//
//  XYZRegionTableViewController.m
//  Heritage
//
//  Created by Sindhu on 11/18/14.
//  Copyright (c) 2014 whatis. All rights reserved.
//

#import "XYZRegionTableViewController.h"
#import "XYZRegionItem.h"

#import "XYZTableViewCell.h"

#import "XYZCountryTableViewController.h"

@interface XYZRegionTableViewController ()

@property NSMutableArray *regionItems;

@end

@implementation XYZRegionTableViewController

/* - (IBAction)done:(id)sender {
    [self.delegate done];
}*/

- (IBAction)unwindToRegion:(UIStoryboardSegue *)segue
{
    printf("bb");
}

- (void)loadInitialData {
    printf("%d %s", self.selectedContinentRow, [self.selectedContinentName UTF8String]);
    
    if (self.selectedContinentRow == 0)
    {
        XYZRegionItem *item1 = [[XYZRegionItem alloc] init];
        item1.itemName = @"Central Africa";
        item1.itemImage = @"africa_central";
        [self.regionItems addObject:item1];
        XYZRegionItem *item2 = [[XYZRegionItem alloc] init];
        item2.itemName = @"East Africa";
        item2.itemImage = @"africa_east";
        [self.regionItems addObject:item2];
        XYZRegionItem *item3 = [[XYZRegionItem alloc] init];
        item3.itemName = @"North Africa";
        item3.itemImage = @"africa_north";
        [self.regionItems addObject:item3];
        
        XYZRegionItem *item4 = [[XYZRegionItem alloc] init];
        item4.itemName = @"South Africa";
        item4.itemImage = @"africa_south";
        [self.regionItems addObject:item4];
        XYZRegionItem *item5 = [[XYZRegionItem alloc] init];
        item5.itemName = @"West Africa";
        item5.itemImage = @"africa_west";
        [self.regionItems addObject:item5];
        
    }
    else if (self.selectedContinentRow == 1)
    {
        XYZRegionItem *item1 = [[XYZRegionItem alloc] init];
        item1.itemName = @"Central America";
        item1.itemImage = @"america_central";
        [self.regionItems addObject:item1];
        XYZRegionItem *item2 = [[XYZRegionItem alloc] init];
        item2.itemName = @"North America";
        item2.itemImage = @"america_north";
        [self.regionItems addObject:item2];
        XYZRegionItem *item3 = [[XYZRegionItem alloc] init];
        item3.itemName = @"South America";
        item3.itemImage = @"america_south";
        [self.regionItems addObject:item3];
        
    }
    else if (self.selectedContinentRow == 2)
    {
        XYZRegionItem *item1 = [[XYZRegionItem alloc] init];
        item1.itemName = @"Central Asia";
        item1.itemImage = @"asia_central";
        [self.regionItems addObject:item1];
        XYZRegionItem *item2 = [[XYZRegionItem alloc] init];
        item2.itemName = @"East Asia";
        item2.itemImage = @"asia_east";
        [self.regionItems addObject:item2];
        XYZRegionItem *item3 = [[XYZRegionItem alloc] init];
        item3.itemName = @"South Asia";
        item3.itemImage = @"asia_south";
        [self.regionItems addObject:item3];
        
        XYZRegionItem *item4 = [[XYZRegionItem alloc] init];
        item4.itemName = @"South East Asia";
        item4.itemImage = @"asia_south_east";
        [self.regionItems addObject:item4];
        XYZRegionItem *item5 = [[XYZRegionItem alloc] init];
        item5.itemName = @"West Asia";
        item5.itemImage = @"asia_west";
        [self.regionItems addObject:item5];
        
    }
    else if (self.selectedContinentRow == 3)
    {
        XYZRegionItem *item1 = [[XYZRegionItem alloc] init];
        item1.itemName = @"Central Europe";
        item1.itemImage = @"europe_central";
        [self.regionItems addObject:item1];
        XYZRegionItem *item2 = [[XYZRegionItem alloc] init];
        item2.itemName = @"East Europe";
        item2.itemImage = @"europe_east";
        [self.regionItems addObject:item2];
        XYZRegionItem *item3 = [[XYZRegionItem alloc] init];
        item3.itemName = @"North Europe";
        item3.itemImage = @"europe_north";
        [self.regionItems addObject:item3];
        
        XYZRegionItem *item4 = [[XYZRegionItem alloc] init];
        item4.itemName = @"South Europe";
        item4.itemImage = @"europe_south";
        [self.regionItems addObject:item4];
        XYZRegionItem *item5 = [[XYZRegionItem alloc] init];
        item5.itemName = @"West Europe";
        item5.itemImage = @"europe_west";
        [self.regionItems addObject:item5];
        
    }
    else if (self.selectedContinentRow == 4)
    {
        XYZRegionItem *item1 = [[XYZRegionItem alloc] init];
        item1.itemName = @"Australia & NZ";
        item1.itemImage = @"anz";
        [self.regionItems addObject:item1];
        XYZRegionItem *item2 = [[XYZRegionItem alloc] init];
        item2.itemName = @"Pacific Islands";
        item2.itemImage = @"pacificislands";
        [self.regionItems addObject:item2];

    }
    
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    //self.regionItems = [[NSMutableArray alloc] init];
    
    //[self loadInitialData];
    
    // disable separator
    //[self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    self.regionItems = [[NSMutableArray alloc] init];
    
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
    
    return [self.regionItems count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    XYZTableViewCell *cell = (XYZTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCellRegion" forIndexPath:indexPath];
    
    XYZRegionItem *regionItem = [self.regionItems objectAtIndex:indexPath.row];
    
    cell.textLabel.text = regionItem.itemName;
    
    // add separator per cell
    UIView * separatorView = [[UIView alloc] initWithFrame:CGRectMake(0, cell.frame.size.height-1, cell.frame.size.width, 1)];
    [separatorView setBackgroundColor:[UIColor lightGrayColor]];
    [separatorView setAlpha:0.8f];
    [cell addSubview:separatorView];

    UIImage *theImage = [UIImage imageNamed:regionItem.itemImage];
    cell.imageView.image = theImage;
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
    
    XYZRegionItem *tappedItem = [self.regionItems objectAtIndex:indexPath.row];
    
    printf("%s", [tappedItem.itemName UTF8String]);
    
    self.selectedRegionName = tappedItem.itemName;
    self.selectedRegionRow = indexPath.row;
    
    [self performSegueWithIdentifier:@"UserShowSegueCountry" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([[segue identifier] isEqualToString:@"UserShowSegueCountry"])
    {
    UINavigationController *nav = segue.destinationViewController;
    XYZCountryTableViewController *vcToPushTo = (XYZCountryTableViewController *)nav.topViewController;
    
    //NSIndexPath * ip = [self.tableView indexPathForSelectedRow];
    
    vcToPushTo.selectedRegionName = self.selectedRegionName;
    vcToPushTo.selectedRegionRow = self.selectedRegionRow;
        
        vcToPushTo.selectedContinentRow = self.selectedContinentRow;
    }
    
}

@end
