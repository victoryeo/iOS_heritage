//
//  XYZCountryTableViewController.m
//  Heritage
//
//  Created by Sindhu on 11/19/14.
//  Copyright (c) 2014 whatis. All rights reserved.
//

#import "XYZCountryTableViewController.h"

#import "XYZCountryItem.h"

#import "XYZCountryTableViewCell.h"

#import "XYZHeritageTableViewController.h"

@interface XYZCountryTableViewController ()

@property NSMutableArray *countryItems;

@end

@implementation XYZCountryTableViewController

- (IBAction)unwindToCountry:(UIStoryboardSegue *)segue
{
    printf("cc");
}

- (void)loadInitialData {
    printf("%d %s", self.selectedRegionRow, [self.selectedRegionName UTF8String]);
    
    if (self.selectedContinentRow == 0 && self.selectedRegionRow == 0)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Cameroon";
        item1.itemImage = @"cameroon";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"Central Africa Republic";
        item2.itemImage = @"car";
        [self.countryItems addObject:item2];
        XYZCountryItem *item3 = [[XYZCountryItem alloc] init];
        item3.itemName = @"Chad";
        item3.itemImage = @"Chad";
        [self.countryItems addObject:item3];
        XYZCountryItem *item4 = [[XYZCountryItem alloc] init];
        item4.itemName = @"Congo";
        item4.itemImage = @"congo";
        [self.countryItems addObject:item4];
        XYZCountryItem *item5 = [[XYZCountryItem alloc] init];
        item5.itemName = @"Gabon";
        item5.itemImage = @"Gabon";
        [self.countryItems addObject:item5];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 1)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Ethiopia";
        item1.itemImage = @"Ethiopia";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"Kenya";
        item2.itemImage = @"Kenya";
        [self.countryItems addObject:item2];
        XYZCountryItem *item3 = [[XYZCountryItem alloc] init];
        item3.itemName = @"Madagascar";
        item3.itemImage = @"Madagascar";
        [self.countryItems addObject:item3];
        XYZCountryItem *item4 = [[XYZCountryItem alloc] init];
        item4.itemName = @"Malawi";
        item4.itemImage = @"Malawi";
        [self.countryItems addObject:item1];
        XYZCountryItem *item5 = [[XYZCountryItem alloc] init];
        item5.itemName = @"Mauritius";
        item5.itemImage = @"Mauritius";
        [self.countryItems addObject:item5];
        
        XYZCountryItem *item6 = [[XYZCountryItem alloc] init];
        item6.itemName = @"Mozambique";
        item6.itemImage = @"Mozambique";
        [self.countryItems addObject:item6];
        
        XYZCountryItem *item7 = [[XYZCountryItem alloc] init];
        item7.itemName = @"Seychelles";
        item7.itemImage = @"Seychelles";
        [self.countryItems addObject:item7];
        
        XYZCountryItem *item8 = [[XYZCountryItem alloc] init];
        item8.itemName = @"Tanzania";
        item8.itemImage = @"Tanzania";
        [self.countryItems addObject:item8];
        
        XYZCountryItem *item9 = [[XYZCountryItem alloc] init];
        item9.itemName = @"Uganda";
        item9.itemImage = @"Uganda";
        [self.countryItems addObject:item9];
        
        XYZCountryItem *item10 = [[XYZCountryItem alloc] init];
        item10.itemName = @"Zimbabwe";
        item10.itemImage = @"Zimbabwe";
        [self.countryItems addObject:item10];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 2)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Algeria";
        item1.itemImage = @"Algeria";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"Egypt";
        item2.itemImage = @"Egypt";
        [self.countryItems addObject:item2];
        XYZCountryItem *item3 = [[XYZCountryItem alloc] init];
        item3.itemName = @"Libya";
        item3.itemImage = @"Libya";
        [self.countryItems addObject:item3];
        XYZCountryItem *item4 = [[XYZCountryItem alloc] init];
        item4.itemName = @"Morocco";
        item4.itemImage = @"Morocco";
        [self.countryItems addObject:item4];
        XYZCountryItem *item5 = [[XYZCountryItem alloc] init];
        item5.itemName = @"Sudan";
        item5.itemImage = @"Sudan";
        [self.countryItems addObject:item5];
        
        XYZCountryItem *item6 = [[XYZCountryItem alloc] init];
        item6.itemName = @"Tunisia";
        item6.itemImage = @"Tunisia";
        [self.countryItems addObject:item6];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 3)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Botswana";
        item1.itemImage = @"Botswana";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"Namibia";
        item2.itemImage = @"Namibia";
        [self.countryItems addObject:item2];
        XYZCountryItem *item3 = [[XYZCountryItem alloc] init];
        item3.itemName = @"South Africa";
        item3.itemImage = @"Southafrica";
        [self.countryItems addObject:item3];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 4)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Benin";
        item1.itemImage = @"Benin";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"Burkina Faso";
        item2.itemImage = @"Burkinafaso";
        [self.countryItems addObject:item2];
        XYZCountryItem *item3 = [[XYZCountryItem alloc] init];
        item3.itemName = @"Cape Verde";
        item3.itemImage = @"Capeverde";
        [self.countryItems addObject:item3];
        XYZCountryItem *item4 = [[XYZCountryItem alloc] init];
        item4.itemName = @"Cote D'lvoire";
        item4.itemImage = @"Cote";
        [self.countryItems addObject:item1];
        XYZCountryItem *item5 = [[XYZCountryItem alloc] init];
        item5.itemName = @"Gambia";
        item5.itemImage = @"Gambia";
        [self.countryItems addObject:item5];
        
        XYZCountryItem *item6 = [[XYZCountryItem alloc] init];
        item6.itemName = @"Ghana";
        item6.itemImage = @"Ghana";
        [self.countryItems addObject:item6];
        
        XYZCountryItem *item7 = [[XYZCountryItem alloc] init];
        item7.itemName = @"Mali";
        item7.itemImage = @"Mali";
        [self.countryItems addObject:item7];
        
        XYZCountryItem *item8 = [[XYZCountryItem alloc] init];
        item8.itemName = @"Mauritania";
        item8.itemImage = @"Mauritania";
        [self.countryItems addObject:item8];
        
        XYZCountryItem *item9 = [[XYZCountryItem alloc] init];
        item9.itemName = @"Niger";
        item9.itemImage = @"Niger";
        [self.countryItems addObject:item9];
        
        XYZCountryItem *item10 = [[XYZCountryItem alloc] init];
        item10.itemName = @"Nigeria";
        item10.itemImage = @"Nigeria";
        [self.countryItems addObject:item10];
        
        XYZCountryItem *item11 = [[XYZCountryItem alloc] init];
        item11.itemName = @"Senegal";
        item11.itemImage = @"Senegal";
        [self.countryItems addObject:item11];
        
        XYZCountryItem *item12 = [[XYZCountryItem alloc] init];
        item12.itemName = @"Togo";
        item12.itemImage = @"Togo";
        [self.countryItems addObject:item12];
    }
    else if (self.selectedContinentRow == 1 && self.selectedRegionRow == 0)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Belize";
        item1.itemImage = @"Belize";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"Costa Rica";
        item2.itemImage = @"Costarica";
        [self.countryItems addObject:item2];
        XYZCountryItem *item3 = [[XYZCountryItem alloc] init];
        item3.itemName = @"Cuba";
        item3.itemImage = @"Cuba";
        [self.countryItems addObject:item3];
        XYZCountryItem *item4 = [[XYZCountryItem alloc] init];
        item4.itemName = @"El Salvador";
        item4.itemImage = @"elsalvador";
        [self.countryItems addObject:item1];
        XYZCountryItem *item5 = [[XYZCountryItem alloc] init];
        item5.itemName = @"Guatemala";
        item5.itemImage = @"Guatemala";
        [self.countryItems addObject:item5];
        
        XYZCountryItem *item6 = [[XYZCountryItem alloc] init];
        item6.itemName = @"Honduras";
        item6.itemImage = @"Honduras";
        [self.countryItems addObject:item6];
		
		XYZCountryItem *item7 = [[XYZCountryItem alloc] init];
        item7.itemName = @"Nicaragua";
        item7.itemImage = @"Nicaragua";
        [self.countryItems addObject:item7];
		
		XYZCountryItem *item8 = [[XYZCountryItem alloc] init];
        item8.itemName = @"Panama";
        item8.itemImage = @"Panama";
        [self.countryItems addObject:item8];
    }
		else if (self.selectedContinentRow == 1 && self.selectedRegionRow == 1)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Canada";
        item1.itemImage = @"Canada";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"Mexico";
        item2.itemImage = @"Mexico";
        [self.countryItems addObject:item2];
        XYZCountryItem *item3 = [[XYZCountryItem alloc] init];
        item3.itemName = @"USA";
        item3.itemImage = @"USA";
        [self.countryItems addObject:item3];
	}
	else if (self.selectedContinentRow == 1 && self.selectedRegionRow == 2)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Argentina";
        item1.itemImage = @"Argentina";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"Bolivia";
        item2.itemImage = @"Bolivia";
        [self.countryItems addObject:item2];
        XYZCountryItem *item3 = [[XYZCountryItem alloc] init];
        item3.itemName = @"Brazil";
        item3.itemImage = @"Brazil";
        [self.countryItems addObject:item3];
        XYZCountryItem *item4 = [[XYZCountryItem alloc] init];
        item4.itemName = @"Chile";
        item4.itemImage = @"Chile";
        [self.countryItems addObject:item4];
        XYZCountryItem *item5 = [[XYZCountryItem alloc] init];
        item5.itemName = @"Colombia";
        item5.itemImage = @"Colombia";
        [self.countryItems addObject:item5];
        
        XYZCountryItem *item6 = [[XYZCountryItem alloc] init];
        item6.itemName = @"Ecuador";
        item6.itemImage = @"Ecuador";
        [self.countryItems addObject:item6];
		
		XYZCountryItem *item7 = [[XYZCountryItem alloc] init];
        item7.itemName = @"Paraguay";
        item7.itemImage = @"Paraguay";
        [self.countryItems addObject:item7];
		
		XYZCountryItem *item8 = [[XYZCountryItem alloc] init];
        item8.itemName = @"Peru";
        item8.itemImage = @"Peru";
        [self.countryItems addObject:item8];
		
		XYZCountryItem *item9 = [[XYZCountryItem alloc] init];
        item9.itemName = @"Suriname";
        item9.itemImage = @"Suriname";
        [self.countryItems addObject:item9];
		
		XYZCountryItem *item10 = [[XYZCountryItem alloc] init];
        item10.itemName = @"Uruguay";
        item10.itemImage = @"Uruguay";
        [self.countryItems addObject:item10];
		
		XYZCountryItem *item11 = [[XYZCountryItem alloc] init];
        item11.itemName = @"Venezuela";
        item11.itemImage = @"Venezuela";
        [self.countryItems addObject:item11];
    }
	    else if (self.selectedContinentRow == 2 && self.selectedRegionRow == 0)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Kazakhstan";
        item1.itemImage = @"Kazakhstan";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"Kyrgyzstan";
        item2.itemImage = @"Kyrgyzstan";
        [self.countryItems addObject:item2];
        XYZCountryItem *item3 = [[XYZCountryItem alloc] init];
        item3.itemName = @"Tajikistan";
        item3.itemImage = @"Tajikistan";
        [self.countryItems addObject:item3];
        XYZCountryItem *item4 = [[XYZCountryItem alloc] init];
        item4.itemName = @"Turkmenistan";
        item4.itemImage = @"Turkmenistan";
        [self.countryItems addObject:item1];
        XYZCountryItem *item5 = [[XYZCountryItem alloc] init];
        item5.itemName = @"Uzbekistan";
        item5.itemImage = @"Uzbekistan";
        [self.countryItems addObject:item5];       
    }
  	    else if (self.selectedContinentRow == 2 && self.selectedRegionRow == 1)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"China";
        item1.itemImage = @"China";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"Japan";
        item2.itemImage = @"Japan";
        [self.countryItems addObject:item2];
        XYZCountryItem *item3 = [[XYZCountryItem alloc] init];
        item3.itemName = @"South Korea";
        item3.itemImage = @"Southkorea";
        [self.countryItems addObject:item3];
        XYZCountryItem *item4 = [[XYZCountryItem alloc] init];
        item4.itemName = @"Mongolia";
        item4.itemImage = @"Mongolia";
        [self.countryItems addObject:item4];
        XYZCountryItem *item5 = [[XYZCountryItem alloc] init];
        item5.itemName = @"North Korea";
        item5.itemImage = @"Northkorea";
        [self.countryItems addObject:item5];       
  }
   	    else if (self.selectedContinentRow == 2 && self.selectedRegionRow == 2)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Bangladesh";
        item1.itemImage = @"Bangladesh";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"India";
        item2.itemImage = @"India";
        [self.countryItems addObject:item2];
        XYZCountryItem *item3 = [[XYZCountryItem alloc] init];
        item3.itemName = @"Nepal";
        item3.itemImage = @"Nepal";
        [self.countryItems addObject:item3];
        XYZCountryItem *item4 = [[XYZCountryItem alloc] init];
        item4.itemName = @"Pakistan";
        item4.itemImage = @"Pakistan";
        [self.countryItems addObject:item4];
        XYZCountryItem *item5 = [[XYZCountryItem alloc] init];
        item5.itemName = @"Sri Langka";
        item5.itemImage = @"Srilangka";
        [self.countryItems addObject:item5];       
  }
    else if (self.selectedContinentRow == 2 && self.selectedRegionRow == 3)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Cambodia";
        item1.itemImage = @"Cambodia";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"Indonesia";
        item2.itemImage = @"Indonesia";
        [self.countryItems addObject:item2];
        XYZCountryItem *item3 = [[XYZCountryItem alloc] init];
        item3.itemName = @"Laos";
        item3.itemImage = @"Laos";
        [self.countryItems addObject:item3];
        XYZCountryItem *item4 = [[XYZCountryItem alloc] init];
        item4.itemName = @"Malaysia";
        item4.itemImage = @"Malaysia";
        [self.countryItems addObject:item4];
        XYZCountryItem *item5 = [[XYZCountryItem alloc] init];
        item5.itemName = @"Myanmar";
        item5.itemImage = @"Myanmar";
        [self.countryItems addObject:item5];   

        XYZCountryItem *item6 = [[XYZCountryItem alloc] init];
        item6.itemName = @"Philippines";
        item6.itemImage = @"Philippines";
        [self.countryItems addObject:item6];
		
		XYZCountryItem *item7 = [[XYZCountryItem alloc] init];
        item7.itemName = @"Thailand";
        item7.itemImage = @"Thailand";
        [self.countryItems addObject:item7];
		
		XYZCountryItem *item8 = [[XYZCountryItem alloc] init];
        item8.itemName = @"Vietnam";
        item8.itemImage = @"Vietnam";
        [self.countryItems addObject:item8];		
  }
      else if (self.selectedContinentRow == 2 && self.selectedRegionRow == 4)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Afghanistan";
        item1.itemImage = @"Afghanistan";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"Bahrain";
        item2.itemImage = @"Bahrain";
        [self.countryItems addObject:item2];
        XYZCountryItem *item3 = [[XYZCountryItem alloc] init];
        item3.itemName = @"Iran";
        item3.itemImage = @"Iran";
        [self.countryItems addObject:item3];
        XYZCountryItem *item4 = [[XYZCountryItem alloc] init];
        item4.itemName = @"Iraq";
        item4.itemImage = @"Iraq";
        [self.countryItems addObject:item4];
        XYZCountryItem *item5 = [[XYZCountryItem alloc] init];
        item5.itemName = @"Israel";
        item5.itemImage = @"Israel";
        [self.countryItems addObject:item5];   

        XYZCountryItem *item6 = [[XYZCountryItem alloc] init];
        item6.itemName = @"Jordan";
        item6.itemImage = @"Jordan";
        [self.countryItems addObject:item6];
		
		XYZCountryItem *item7 = [[XYZCountryItem alloc] init];
        item7.itemName = @"Lebanon";
        item7.itemImage = @"Lebanon";
        [self.countryItems addObject:item7];
		
		XYZCountryItem *item8 = [[XYZCountryItem alloc] init];
        item8.itemName = @"Oman";
        item8.itemImage = @"Oman";
        [self.countryItems addObject:item8];	

		XYZCountryItem *item9 = [[XYZCountryItem alloc] init];
        item9.itemName = @"Qatar";
        item9.itemImage = @"Qatar";
        [self.countryItems addObject:item9];
		
		XYZCountryItem *item10 = [[XYZCountryItem alloc] init];
        item10.itemName = @"Saudi Arabia";
        item10.itemImage = @"Saudiarabia";
        [self.countryItems addObject:item10];
		
		XYZCountryItem *item11 = [[XYZCountryItem alloc] init];
        item11.itemName = @"Syria";
        item11.itemImage = @"Syria";
        [self.countryItems addObject:item11];
		
		XYZCountryItem *item12 = [[XYZCountryItem alloc] init];
        item12.itemName = @"Turkey";
        item12.itemImage = @"Turkey";
        [self.countryItems addObject:item12];
    		
    }
	 else if (self.selectedContinentRow == 3 && self.selectedRegionRow == 0)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Austria";
        item1.itemImage = @"Austria";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"Czech";
        item2.itemImage = @"Czech";
        [self.countryItems addObject:item2];
        XYZCountryItem *item3 = [[XYZCountryItem alloc] init];
        item3.itemName = @"Germany";
        item3.itemImage = @"Germany";
        [self.countryItems addObject:item3];
        XYZCountryItem *item4 = [[XYZCountryItem alloc] init];
        item4.itemName = @"Hungary";
        item4.itemImage = @"Hungary";
        [self.countryItems addObject:item4];
        XYZCountryItem *item5 = [[XYZCountryItem alloc] init];
        item5.itemName = @"Poland";
        item5.itemImage = @"Poland";
        [self.countryItems addObject:item5];   

        XYZCountryItem *item6 = [[XYZCountryItem alloc] init];
        item6.itemName = @"Slovakia";
        item6.itemImage = @"Slovakia";
        [self.countryItems addObject:item6];
		
		XYZCountryItem *item7 = [[XYZCountryItem alloc] init];
        item7.itemName = @"Switzerland";
        item7.itemImage = @"Switzerland";
        [self.countryItems addObject:item7];
	}
	      else if (self.selectedContinentRow == 3 && self.selectedRegionRow == 1)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Azerbaijan";
        item1.itemImage = @"Azerbaijan";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"Belarus";
        item2.itemImage = @"Belarus";
        [self.countryItems addObject:item2];
        XYZCountryItem *item3 = [[XYZCountryItem alloc] init];
        item3.itemName = @"Bulgaria";
        item3.itemImage = @"Bulgaria";
        [self.countryItems addObject:item3];
        XYZCountryItem *item4 = [[XYZCountryItem alloc] init];
        item4.itemName = @"Estonia";
        item4.itemImage = @"Estonia";
        [self.countryItems addObject:item4];
        XYZCountryItem *item5 = [[XYZCountryItem alloc] init];
        item5.itemName = @"Georgia";
        item5.itemImage = @"Georgia";
        [self.countryItems addObject:item5];   

        XYZCountryItem *item6 = [[XYZCountryItem alloc] init];
        item6.itemName = @"Latvia";
        item6.itemImage = @"Latvia";
        [self.countryItems addObject:item6];
		
		XYZCountryItem *item7 = [[XYZCountryItem alloc] init];
        item7.itemName = @"Lithuania";
        item7.itemImage = @"Lithuania";
        [self.countryItems addObject:item7];
		
		XYZCountryItem *item8 = [[XYZCountryItem alloc] init];
        item8.itemName = @"Romania";
        item8.itemImage = @"Romania";
        [self.countryItems addObject:item8];	

		XYZCountryItem *item9 = [[XYZCountryItem alloc] init];
        item9.itemName = @"Russia";
        item9.itemImage = @"Russia";
        [self.countryItems addObject:item9];
		
		XYZCountryItem *item10 = [[XYZCountryItem alloc] init];
        item10.itemName = @"Ukraine";
        item10.itemImage = @"Ukraine";
        [self.countryItems addObject:item10];
	}
	      else if (self.selectedContinentRow == 3 && self.selectedRegionRow == 2)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Denmark";
        item1.itemImage = @"Denmark";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"Finland";
        item2.itemImage = @"Finland";
        [self.countryItems addObject:item2];
        XYZCountryItem *item3 = [[XYZCountryItem alloc] init];
        item3.itemName = @"Iceland";
        item3.itemImage = @"Iceland";
        [self.countryItems addObject:item3];
        XYZCountryItem *item4 = [[XYZCountryItem alloc] init];
        item4.itemName = @"Norway";
        item4.itemImage = @"Norway";
        [self.countryItems addObject:item4];
        XYZCountryItem *item5 = [[XYZCountryItem alloc] init];
        item5.itemName = @"Sweden";
        item5.itemImage = @"Sweden";
        [self.countryItems addObject:item5];   
    }
     else if (self.selectedContinentRow == 3 && self.selectedRegionRow == 3)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Albania";
        item1.itemImage = @"Albania";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"Armenia";
        item2.itemImage = @"Armenia";
        [self.countryItems addObject:item2];
        XYZCountryItem *item3 = [[XYZCountryItem alloc] init];
        item3.itemName = @"Bosnia";
        item3.itemImage = @"Bosnia";
        [self.countryItems addObject:item3];
        XYZCountryItem *item4 = [[XYZCountryItem alloc] init];
        item4.itemName = @"Croatia";
        item4.itemImage = @"Croatia";
        [self.countryItems addObject:item4];
        XYZCountryItem *item5 = [[XYZCountryItem alloc] init];
        item5.itemName = @"Cyprus";
        item5.itemImage = @"Cyprus";
        [self.countryItems addObject:item5];   

        XYZCountryItem *item6 = [[XYZCountryItem alloc] init];
        item6.itemName = @"Greece";
        item6.itemImage = @"Greece";
        [self.countryItems addObject:item6];
		
		XYZCountryItem *item7 = [[XYZCountryItem alloc] init];
        item7.itemName = @"Holy See";
        item7.itemImage = @"holysee";
        [self.countryItems addObject:item7];
		
		XYZCountryItem *item8 = [[XYZCountryItem alloc] init];
        item8.itemName = @"Italy";
        item8.itemImage = @"Italy";
        [self.countryItems addObject:item8];	

		XYZCountryItem *item9 = [[XYZCountryItem alloc] init];
        item9.itemName = @"Macedonia";
        item9.itemImage = @"Macedonia";
        [self.countryItems addObject:item9];
		
		XYZCountryItem *item10 = [[XYZCountryItem alloc] init];
        item10.itemName = @"Malta";
        item10.itemImage = @"Malta";
        [self.countryItems addObject:item10];
		
		XYZCountryItem *item11 = [[XYZCountryItem alloc] init];
        item11.itemName = @"Montenegro";
        item11.itemImage = @"Montenegro";
        [self.countryItems addObject:item11];
		
		XYZCountryItem *item12 = [[XYZCountryItem alloc] init];
        item12.itemName = @"Portugal";
        item12.itemImage = @"Portugal";
        [self.countryItems addObject:item12];
		
				XYZCountryItem *item13 = [[XYZCountryItem alloc] init];
        item13.itemName = @"San Marino";
        item13.itemImage = @"SanMarino";
        [self.countryItems addObject:item13];
		
		XYZCountryItem *item14 = [[XYZCountryItem alloc] init];
        item14.itemName = @"Serbia";
        item14.itemImage = @"Serbia";
        [self.countryItems addObject:item14];
		
		XYZCountryItem *item15 = [[XYZCountryItem alloc] init];
        item15.itemName = @"Slovenia";
        item15.itemImage = @"Slovenia";
        [self.countryItems addObject:item15];
		
				XYZCountryItem *item16 = [[XYZCountryItem alloc] init];
        item16.itemName = @"Spain";
        item16.itemImage = @"Spain";
        [self.countryItems addObject:item16];
    		
    }	
	
	else if (self.selectedContinentRow == 3 && self.selectedRegionRow == 4)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Belgium";
        item1.itemImage = @"Belgium";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"France";
        item2.itemImage = @"France";
        [self.countryItems addObject:item2];
        XYZCountryItem *item3 = [[XYZCountryItem alloc] init];
        item3.itemName = @"Ireland";
        item3.itemImage = @"Ireland";
        [self.countryItems addObject:item3];
        XYZCountryItem *item4 = [[XYZCountryItem alloc] init];
        item4.itemName = @"Luxembourg";
        item4.itemImage = @"Luxembourg";
        [self.countryItems addObject:item4];
        XYZCountryItem *item5 = [[XYZCountryItem alloc] init];
        item5.itemName = @"Netherlands";
        item5.itemImage = @"Netherlands";
        [self.countryItems addObject:item5];   

        XYZCountryItem *item6 = [[XYZCountryItem alloc] init];
        item6.itemName = @"UK";
        item6.itemImage = @"uk";
        [self.countryItems addObject:item6];
	}
		else if (self.selectedContinentRow == 4 && self.selectedRegionRow == 0)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Australia";
        item1.itemImage = @"australia";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"New Zealand";
        item2.itemImage = @"newzealand";
        [self.countryItems addObject:item2];
	}
		else if (self.selectedContinentRow == 4 && self.selectedRegionRow == 1)
    {
        XYZCountryItem *item1 = [[XYZCountryItem alloc] init];
        item1.itemName = @"Fiji";
        item1.itemImage = @"Fiji";
        [self.countryItems addObject:item1];
        XYZCountryItem *item2 = [[XYZCountryItem alloc] init];
        item2.itemName = @"Kiribati";
        item2.itemImage = @"Kiribati";
        [self.countryItems addObject:item2];
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

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UIColor* grey = [UIColor colorWithWhite: 0.90 alpha:1];
    
    // set background color
    cell.backgroundColor = grey;
    
}

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    //self.countryItems = [[NSMutableArray alloc] init];
    
    //[self loadInitialData];
    
    // disable separator
    //[self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];

}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.countryItems = [[NSMutableArray alloc] init];
    
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
    return [self.countryItems count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    XYZCountryTableViewCell *cell = (XYZCountryTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCellCountry" forIndexPath:indexPath];
    
    XYZCountryItem *countryItem = [self.countryItems objectAtIndex:indexPath.row];
    
    cell.textLabel.text = countryItem.itemName;
    
    // add separator per cell
    UIView * separatorView = [[UIView alloc] initWithFrame:CGRectMake(0, cell.frame.size.height-1, cell.frame.size.width, 1)];
    [separatorView setBackgroundColor:[UIColor lightGrayColor]];
    [separatorView setAlpha:0.8f];
    [cell addSubview:separatorView];
    
    UIImage *theImage = [UIImage imageNamed:countryItem.itemImage];
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
    
    XYZCountryItem *tappedItem = [self.countryItems objectAtIndex:indexPath.row];
    
    printf("%s", [tappedItem.itemName UTF8String]);
    
    self.selectedCountryName = tappedItem.itemName;
    self.selectedCountryRow = indexPath.row;
    
    [self performSegueWithIdentifier:@"UserShowSegueHeritage" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([[segue identifier] isEqualToString:@"UserShowSegueHeritage"])
    {
        UINavigationController *nav = segue.destinationViewController;
        XYZHeritageTableViewController *vcToPushTo = (XYZHeritageTableViewController *)nav.topViewController;
        
        //NSIndexPath * ip = [self.tableView indexPathForSelectedRow];
        
        vcToPushTo.selectedRegionName = self.selectedRegionName;
        vcToPushTo.selectedRegionRow = self.selectedRegionRow;
        
        vcToPushTo.selectedContinentRow = self.selectedContinentRow;
        vcToPushTo.selectedCountryRow = self.selectedCountryRow;
    }
    
}

@end
