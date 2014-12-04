//
//  XYZHeritageTableViewController.m
//  Heritage
//
//  Created by Sindhu on 11/22/14.
//  Copyright (c) 2014 whatis. All rights reserved.
//

#import "XYZHeritageTableViewController.h"

#import "XYZHeritageItem.h"

/*#import "XYZHeritageTableViewCell.h"*/
/*#import "XYZHeritageDetailTableCell.h"*/

@interface XYZHeritageTableViewController ()

@property NSMutableArray *heritageItems;

@property (strong, nonatomic) IBOutlet UITableViewCell *heritageCell;
//@property (strong, nonatomic) UINib *heritageCellNib;

@end

@implementation XYZHeritageTableViewController

#define XYZ_HERITAGECELLTAG_NAME     100
#define XYZ_HERITAGECELLTAG_TYPE     101
#define XYZ_HERITAGECELLTAG_YEAR     102
#define XYZ_HERITAGECELLTAG_IMAGE     200

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadInitialData
{
    printf("%d %d %d", self.selectedContinentRow, self.selectedRegionRow, self.selectedCountryRow);
    
    if (self.selectedContinentRow == 0 && self.selectedRegionRow == 0 && self.selectedCountryRow == 0)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Dja Faunal Reserve";     item1.itemCat= @"Natural"; item1.itemYear=@"1987";
        item1.itemImage = @"cameroon_01";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Sangha Trinational";     item2.itemCat= @"Natural"; item2.itemYear=@"2012";
        item2.itemImage = @"cameroon_02";
        [self.heritageItems addObject:item2];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 0 && self.selectedCountryRow == 1)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Manovo-Gounda St. Floris National Park";
        item1.itemImage = @"car_01";          item1.itemCat= @"Natural"; item1.itemYear=@"1988";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Sangha Trinational"; item2.itemCat= @"Natural"; item2.itemYear=@"2012";
        item2.itemImage = @"cameroon_02";
        [self.heritageItems addObject:item2];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 0 && self.selectedCountryRow == 2)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Lakes of Ounianga";  item1.itemCat= @"Natural"; item1.itemYear=@"2012";
        item1.itemImage = @"chad_01";
        [self.heritageItems addObject:item1];
      
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 0 && self.selectedCountryRow == 3)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Virunga National Park";  item1.itemCat= @"Natural"; item1.itemYear=@"1979";
        item1.itemImage = @"congo_01";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Garamba National Park";  item2.itemCat= @"Natural"; item2.itemYear=@"1980";
        item2.itemImage = @"congo_02";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Kahuzi-Niega National Park"; item3.itemCat= @"Natural"; item3.itemYear=@"2012";
        item3.itemImage = @"congo_03";
        [self.heritageItems addObject:item3];
        
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Okapi Wildlife Reserve";  item4.itemCat= @"Natural"; item4.itemYear=@"2012";
        item4.itemImage = @"congo_04";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"Salango National Park";  item5.itemCat= @"Natural"; item5.itemYear=@"2012";
        item5.itemImage = @"congo_05";
        [self.heritageItems addObject:item5];
        XYZHeritageItem *item6 = [[XYZHeritageItem alloc] init];
        item6.itemName = @"Sangha Trinational";   item6.itemCat= @"Natural"; item6.itemYear=@"2012";
        item6.itemImage = @"cameroon_02";
        [self.heritageItems addObject:item6];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 0 && self.selectedCountryRow == 4)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Ecosystem and Relict Cultural Landscape of Lope-Okanda";
        item1.itemImage = @"gabon_01";      item1.itemCat= @"Natural"; item1.itemYear=@"2007";
        [self.heritageItems addObject:item1];
        
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 1 && self.selectedCountryRow == 0)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Rock-Hewn Churches, Lalibela";
        item1.itemImage = @"ethiopia_01";   item1.itemCat= @"Cultural"; item1.itemYear=@"1978";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Simien National Park";
        item2.itemImage = @"ethiopia_02";    item2.itemCat= @"Natural"; item2.itemYear=@"1978";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Fasil Ghebbi, Gondar Region";
        item3.itemImage = @"ethiopia_03";      item3.itemCat= @"Cultural"; item3.itemYear=@"1979";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Aksum";         item4.itemCat= @"Cultural"; item4.itemYear=@"1980";
        item4.itemImage = @"ethiopia_04";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"Lower Valley of the Awash";
        item5.itemImage = @"ethiopia_05";   item5.itemCat= @"Cultural"; item5.itemYear=@"1980";
        [self.heritageItems addObject:item5];
        
        XYZHeritageItem *item6 = [[XYZHeritageItem alloc] init];
        item6.itemName = @"Lower Valley of the Omo";
        item6.itemImage = @"ethiopia_06";   item6.itemCat= @"Cultural"; item6.itemYear=@"1980";
        [self.heritageItems addObject:item6];
        XYZHeritageItem *item7 = [[XYZHeritageItem alloc] init];
        item7.itemName = @"Tiya";   item7.itemCat= @"Cultural"; item7.itemYear=@"1980";
        item7.itemImage = @"ethiopia_07";
        [self.heritageItems addObject:item7];
        XYZHeritageItem *item8 = [[XYZHeritageItem alloc] init];
        item8.itemName = @"Harar Jugol, the Fortified Historic Town";
        item8.itemImage = @"ethiopia_08";   item8.itemCat= @"Cultural"; item8.itemYear=@"2006";
        [self.heritageItems addObject:item8];
        XYZHeritageItem *item9 = [[XYZHeritageItem alloc] init];
        item9.itemName = @"Konso Cultural Landscape";
        item9.itemImage = @"ethiopia_09";   item9.itemCat= @"Cultural"; item9.itemYear=@"2011";
        [self.heritageItems addObject:item9];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 1 && self.selectedCountryRow == 1)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Mount Kenya National Park/Natural Forest";
        item1.itemImage = @"kenya_01";  item1.itemCat= @"Natural"; item1.itemYear=@"1997";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Lake Turkana National Parks";
        item2.itemImage = @"kenya_02";  item2.itemCat= @"Natural"; item2.itemYear=@"1997";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Lamu Old Town";
        item3.itemImage = @"kenya_03";  item3.itemCat= @"Cultural"; item3.itemYear=@"2001";
        [self.heritageItems addObject:item3];
        
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Sacred Mijikenda Kaya Forests";
        item4.itemImage = @"kenya_04";  item4.itemCat= @"Cultural"; item4.itemYear=@"2008";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"Lake System in the Great Rift Valley";
        item5.itemImage = @"kenya_05";  item5.itemCat= @"Natural"; item5.itemYear=@"2011";
        [self.heritageItems addObject:item5];
        XYZHeritageItem *item6 = [[XYZHeritageItem alloc] init];
        item6.itemName = @"Fort Jesus";
        item6.itemImage = @"kenya_06";  item6.itemCat= @"Cultural"; item6.itemYear=@"2011";
        [self.heritageItems addObject:item6];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 1 && self.selectedCountryRow == 2)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Tsingy de Bemaraha Strict Nature Reserve";
        item1.itemImage = @"madagascar_01"; item1.itemCat= @"Natural"; item1.itemYear=@"1990";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Royal Hill of Ambohimanga";
        item2.itemImage = @"madagascar_02"; item2.itemCat= @"Cultural"; item2.itemYear=@"2001";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Rainforests of the Atsinanana";
        item3.itemImage = @"madagascar_03"; item3.itemCat= @"Natural"; item3.itemYear=@"2007";
        [self.heritageItems addObject:item3];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 1 && self.selectedCountryRow == 3)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Lake Malawi National Park";
        item1.itemImage = @"malawi_01"; item1.itemCat= @"Natural"; item1.itemYear=@"1994";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Chongoni Rock-Art Area";
        item2.itemImage = @"malawi_02"; item2.itemCat= @"Cultural"; item2.itemYear=@"2006";
        [self.heritageItems addObject:item2];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 1 && self.selectedCountryRow == 4)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Aapravasi Ghat";
        item1.itemImage = @"mauritius_aa"; item1.itemCat= @"Cultural"; item1.itemYear=@"2006";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Le Morne Cultural Landscape";
        item2.itemImage = @"mauritius_le"; item2.itemCat= @"Cultural"; item2.itemYear=@"2008";
        [self.heritageItems addObject:item2];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 1 && self.selectedCountryRow == 5)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Island of Mozambique";
        item1.itemImage = @"mozambique_island";  item1.itemCat= @"Cultural"; item1.itemYear=@"1991";
        [self.heritageItems addObject:item1];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 1 && self.selectedCountryRow == 6)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Aldabra Atoll";
        item1.itemImage = @"sey_atoll";  item1.itemCat= @"Natural"; item1.itemYear=@"1982";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Vallee de Mai Nature Reserve";
        item2.itemImage = @"sey_val";  item2.itemCat= @"Natural"; item2.itemYear=@"1983";
        [self.heritageItems addObject:item2];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 1 && self.selectedCountryRow == 7)
    {
        
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Kondoa Rock-Art Sites";
        item1.itemImage = @"malawi_02"; item1.itemCat= @"Cultural"; item1.itemYear=@"2006";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Ruins of Kilwa Kisiwani and Ruins of Songo Mnara";
        item2.itemImage = @"tanz_ruins";  item2.itemCat= @"Cultural"; item2.itemYear=@"1981";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Stone Town of Zanzibar";
        item3.itemImage = @"tanz_zan";  item3.itemCat= @"Cultural"; item3.itemYear=@"2000";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Kilimanjaro National Park";
        item4.itemImage = @"tanz_kili";  item4.itemCat= @"Natural"; item4.itemYear=@"1987";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"Selous Game Reserve";
        item5.itemImage = @"tanz_sel";  item5.itemCat= @"Natural"; item5.itemYear=@"1982";
        [self.heritageItems addObject:item5];
        
        XYZHeritageItem *item6 = [[XYZHeritageItem alloc] init];
        item6.itemName = @"Serengeti National Park";
        item6.itemImage = @"tanz_ser";  item6.itemCat= @"Natural"; item6.itemYear=@"1981";
        [self.heritageItems addObject:item6];
        XYZHeritageItem *item7 = [[XYZHeritageItem alloc] init];
        item7.itemName = @"Ngorongoro Conservation Area";
        item7.itemImage = @"tanz_ngo";  item7.itemCat= @"Mixed"; item7.itemYear=@"1979";
        [self.heritageItems addObject:item7];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 1 && self.selectedCountryRow == 8)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Tombs of Buganda Kings at Kasubi ";
        item1.itemImage = @"uganda_bu";  item1.itemCat= @"Cultural"; item1.itemYear=@"2001";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Bwindi Impenetrable National Park";
        item2.itemImage = @"uganda_bwi";   item2.itemCat= @"Cultural"; item2.itemYear=@"1994";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Rwenzori Mountains National Park";
        item3.itemImage = @"uganda_rwe";  item3.itemCat= @"Natural"; item3.itemYear=@"1994";
        [self.heritageItems addObject:item3];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 1 && self.selectedCountryRow == 9)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Great Zimbabwe National Monument";
        item1.itemImage = @"zim_nat"; item1.itemCat= @"Cultural"; item1.itemYear=@"1986";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Khami Ruins National Monument";
        item2.itemImage = @"zim_khami"; item2.itemCat= @"Cultural"; item2.itemYear=@"1986";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Matobo Hills";
        item3.itemImage = @"zim_mato"; item3.itemCat= @"Cultural"; item3.itemYear=@"2003";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Mana Pools National Park, Sapi and Chewore Safari Areas";
        item4.itemImage = @"zim_mana"; item4.itemCat= @"Natural"; item4.itemYear=@"1984";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"Mosi-oa-Tunya / Victoria Falls ";
        item5.itemImage = @"zim_mosi";  item5.itemCat= @"Natural"; item5.itemYear=@"1988";
        [self.heritageItems addObject:item5];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 2 && self.selectedCountryRow == 0)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Al Qal'a of Beni Hammad";
        item1.itemImage = @"algeria_alqala";  item1.itemCat= @"Cultural"; item1.itemYear=@"1980";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Djemila";
        item2.itemImage = @"algeria_djemila";  item2.itemCat= @"Cultural"; item2.itemYear=@"1982";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Kasbah of Algiers";
        item3.itemImage = @"algeria_algiers";  item3.itemCat= @"Cultural"; item3.itemYear=@"1992";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"M'Zab Valley";
        item4.itemImage = @"algeria_mzab";  item4.itemCat= @"Cultural"; item4.itemYear=@"1982";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"Timgad";
        item5.itemImage = @"algeria_timgad";  item5.itemCat= @"Cultural"; item5.itemYear=@"1982";
        [self.heritageItems addObject:item5];
        
        XYZHeritageItem *item6 = [[XYZHeritageItem alloc] init];
        item6.itemName = @"Tipasa";  item6.itemCat= @"Cultural"; item6.itemYear=@"1982";
        item6.itemImage = @"algeria_tipasa";
        [self.heritageItems addObject:item6];
        XYZHeritageItem *item7 = [[XYZHeritageItem alloc] init];
        item7.itemName = @"Tassili n'Ajjer";
        item7.itemImage = @"algeria_tassili"; item7.itemCat= @"Mixed"; item7.itemYear=@"1982";
        [self.heritageItems addObject:item7];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 2 && self.selectedCountryRow == 1)
    {        
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Abu Mena";
        item1.itemImage = @"egypt_abu";  item1.itemCat= @"Cultural"; item1.itemYear=@"1979";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Ancient Thebes with its Necropolis";
        item2.itemImage = @"egypt_thebes";  item2.itemCat= @"Cultural"; item2.itemYear=@"1979";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Historic Cairo";
        item3.itemImage = @"egypt_cairo";  item3.itemCat= @"Cultural"; item3.itemYear=@"1979";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Memphis and its Necropolis - the Pyramid Fields from Giza to Dahshur";
        item4.itemImage = @"egypt_pyramid";  item4.itemCat= @"Cultural"; item4.itemYear=@"1979";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"Nubian Monuments from Abu Simbel to Philae";
        item5.itemImage = @"egypt_nubian";  item5.itemCat= @"Cultural"; item5.itemYear=@"1979";
        [self.heritageItems addObject:item5];
        
        XYZHeritageItem *item6 = [[XYZHeritageItem alloc] init];
        item6.itemName = @"Saint Catherine Area";  item6.itemCat= @"Cultural"; item6.itemYear=@"2002";
        item6.itemImage = @"egypt_saint";
        [self.heritageItems addObject:item6];
        XYZHeritageItem *item7 = [[XYZHeritageItem alloc] init];
        item7.itemName = @"Wadi Al-Hitan (Whale Valley)";
        item7.itemImage = @"egypt_wadi"; item7.itemCat= @"Natural"; item7.itemYear=@"2005";
        [self.heritageItems addObject:item7];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 2 && self.selectedCountryRow == 2)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Archaeological Site of Cyrene";
        item1.itemImage = @"libya_cyrene";  item1.itemCat= @"Cultural"; item1.itemYear=@"1982";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Archaeological Site of Leptis Magna";
        item2.itemImage = @"libya_leptis";  item2.itemCat= @"Cultural"; item2.itemYear=@"1982";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Archaeological Site of Sabratha";
        item3.itemImage = @"libya_sabratha";  item3.itemCat= @"Cultural"; item3.itemYear=@"1982";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Old Town of Ghadam's";
        item4.itemImage = @"libya_gha";  item4.itemCat= @"Cultural"; item4.itemYear=@"1986";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"Rock-Art Sites of Tadrart Acacus";
        item5.itemImage = @"libya_acacus";  item5.itemCat= @"Cultural"; item5.itemYear=@"1985";
        [self.heritageItems addObject:item5];
        
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 2 && self.selectedCountryRow == 3)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Medina of Fez";
        item1.itemImage = @"morocco_fez";  item1.itemCat= @"Cultural"; item1.itemYear=@"1981";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Medina of Marrakesh";
        item2.itemImage = @"morocco_marrakesh";  item2.itemCat= @"Cultural"; item2.itemYear=@"1985";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Ksar of Ait-Ben-Haddou";
        item3.itemImage = @"morocco_ksar";  item3.itemCat= @"Cultural"; item3.itemYear=@"1987";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Historic City of Meknes";
        item4.itemImage = @"morocco_meknes";  item4.itemCat= @"Cultural"; item4.itemYear=@"1996";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"Archaeological Site of Volubilis";
        item5.itemImage = @"morocco_volu";  item5.itemCat= @"Cultural"; item5.itemYear=@"1987";
        [self.heritageItems addObject:item5];
        
        XYZHeritageItem *item6 = [[XYZHeritageItem alloc] init];
        item6.itemName = @"Medina of Tztouan (formerly known as Titawin)";  item6.itemCat= @"Cultural"; item6.itemYear=@"1997";
        item6.itemImage = @"morocco_tetouan";
        [self.heritageItems addObject:item6];
        XYZHeritageItem *item7 = [[XYZHeritageItem alloc] init];
        item7.itemName = @"Medina of Essaouira (formerly Mogador)";
        item7.itemImage = @"morocco_mogador"; item7.itemCat= @"Cultural"; item7.itemYear=@"2001";
        [self.heritageItems addObject:item7];
        XYZHeritageItem *item8 = [[XYZHeritageItem alloc] init];
        item8.itemName = @"Portuguese City of Mazagan (El Jadida)";  item8.itemCat= @"Cultural"; item8.itemYear=@"2004";
        item8.itemImage = @"morocco_mazagan";
        [self.heritageItems addObject:item8];
        XYZHeritageItem *item9 = [[XYZHeritageItem alloc] init];
        item9.itemName = @"Rabat, Modern Capital and Historic City: a Shared Heritage";
        item9.itemImage = @"morocco_rabat"; item9.itemCat= @"Cultural"; item9.itemYear=@"2012";
        [self.heritageItems addObject:item9];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 2 && self.selectedCountryRow == 4)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Gebel Barkal and the Sites of the Napatan Region";
        item1.itemImage = @"sudan_gebel";  item1.itemCat= @"Cultural"; item1.itemYear=@"2004";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Archaeological Sites of the Island of Meroe";
        item2.itemImage = @"sudan_meroe";  item2.itemCat= @"Cultural"; item2.itemYear=@"2011";
        [self.heritageItems addObject:item2];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 2 && self.selectedCountryRow == 5)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Amphitheatre of El Jem";
        item1.itemImage = @"tunisia_eljem";  item1.itemCat= @"Cultural"; item1.itemYear=@"1979";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Archaeological Site of Carthage";
        item2.itemImage = @"tunisia_carthage";  item2.itemCat= @"Cultural"; item2.itemYear=@"1979";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Medina of Tunis";
        item3.itemImage = @"tunisia_tunis";  item3.itemCat= @"Cultural"; item3.itemYear=@"1979";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Ichkeul National Park";
        item4.itemImage = @"tunisia_ichkeul";  item4.itemCat= @"Natural"; item4.itemYear=@"1980";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"Punic Town of Kerkuana and its Necropolis";
        item5.itemImage = @"tunisia_punic";  item5.itemCat= @"Cultural"; item5.itemYear=@"1985";
        [self.heritageItems addObject:item5];
        
        XYZHeritageItem *item6 = [[XYZHeritageItem alloc] init];
        item6.itemName = @"Kairouan";  item6.itemCat= @"Cultural"; item6.itemYear=@"1988";
        item6.itemImage = @"tunisia_kairou";
        [self.heritageItems addObject:item6];
        XYZHeritageItem *item7 = [[XYZHeritageItem alloc] init];
        item7.itemName = @"Medina of Sousse";
        item7.itemImage = @"tunisia_sousse"; item7.itemCat= @"Cultural"; item7.itemYear=@"1988";
        [self.heritageItems addObject:item7];
        XYZHeritageItem *item8 = [[XYZHeritageItem alloc] init];
        item8.itemName = @"Dougga/Thugga";  item8.itemCat= @"Cultural"; item8.itemYear=@"1997";
        item8.itemImage = @"tunisia_dougga";
        [self.heritageItems addObject:item8];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 3 && self.selectedCountryRow == 0)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Tsodilo";
        item1.itemImage = @"bots_tso";  item1.itemCat= @"Cultural"; item1.itemYear=@"2001";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Okavango Delta";
        item2.itemImage = @"bots_oka";  item2.itemCat= @"Natural"; item2.itemYear=@"2014";
        [self.heritageItems addObject:item2];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 3 && self.selectedCountryRow == 1)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Twyfelfontein";
        item1.itemImage = @"namib_twy";  item1.itemCat= @"Cultural"; item1.itemYear=@"2007";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Namib Sand Sea";
        item2.itemImage = @"namib_des";  item2.itemCat= @"Natural"; item2.itemYear=@"2014";
        [self.heritageItems addObject:item2];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 3 && self.selectedCountryRow == 2)
    {        
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Fossil Hominid Sites of South Africa";
        item1.itemImage = @"safrica_fossil";  item1.itemCat= @"Cultural"; item1.itemYear=@"1999";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Robben Island";
        item2.itemImage = @"safrica_robben";  item2.itemCat= @"Cultural"; item2.itemYear=@"1999";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Simangaliso Wetland Park";
        item3.itemImage = @"safrica_sima";  item3.itemCat= @"Natural"; item3.itemYear=@"1999";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Maloti Drakensberg Park";
        item4.itemImage = @"safrica_maloti";  item4.itemCat= @"Mixed"; item4.itemYear=@"2000";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"Mapungubwe Cultural Landscape";
        item5.itemImage = @"safrica_mapun";  item5.itemCat= @"Cultural"; item5.itemYear=@"2003";
        [self.heritageItems addObject:item5];
        
        XYZHeritageItem *item6 = [[XYZHeritageItem alloc] init];
        item6.itemName = @"Cape Floral Region Protected Areas";  item6.itemCat= @"Cultural"; item6.itemYear=@"2004";
        item6.itemImage = @"safrica_floral";
        [self.heritageItems addObject:item6];
        XYZHeritageItem *item7 = [[XYZHeritageItem alloc] init];
        item7.itemName = @"Vredefort Dome";
        item7.itemImage = @"safrica_vrede"; item7.itemCat= @"Cultural"; item7.itemYear=@"2005";
        [self.heritageItems addObject:item7];
        XYZHeritageItem *item8 = [[XYZHeritageItem alloc] init];
        item8.itemName = @"Richtersveld Cultural and Botanical Landscape";  item8.itemCat= @"Cultural"; item8.itemYear=@"2007";
        item8.itemImage = @"safrica_rich";
        [self.heritageItems addObject:item8];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 4 && self.selectedCountryRow == 0)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Royal Palaces of Abomey";
        item1.itemImage = @"benin_abomey";  item1.itemCat= @"Cultural"; item1.itemYear=@"1985";
        [self.heritageItems addObject:item1];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 4 && self.selectedCountryRow == 1)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Ruins of Loropeni";
        item1.itemImage = @"burkina_ruins";  item1.itemCat= @"Cultural"; item1.itemYear=@"2009";
        [self.heritageItems addObject:item1];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 4 && self.selectedCountryRow == 2)
    {
       
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Cidade Velha, Historic Center of Ribeira Grande";
        item1.itemImage = @"cape_cidade";  item1.itemCat= @"Cultural"; item1.itemYear=@"2009";
        [self.heritageItems addObject:item1];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 4 && self.selectedCountryRow == 3)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Historic Town of Grand Bassam ";
        item1.itemImage = @"cote_bassam";  item1.itemCat= @"Cultural"; item1.itemYear=@"2012";
        [self.heritageItems addObject:item1];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 4 && self.selectedCountryRow == 4)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Kunta Kinteh Island and Related Sites";
        item1.itemImage = @"gambia_kunta";  item1.itemCat= @"Cultural"; item1.itemYear=@"2003";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Stone Circles of Senegambia";
        item2.itemImage = @"gambia_stone";  item2.itemCat= @"Cultural"; item2.itemYear=@"2006";
        [self.heritageItems addObject:item2];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 4 && self.selectedCountryRow == 5)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Asante Traditional Buildings";
        item1.itemImage = @"ghana_asante";  item1.itemCat= @"Cultural"; item1.itemYear=@"1980";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Forts and Castles, Volta, Greater Accra, Central and Western Regions";
        item2.itemImage = @"ghana_forts";  item2.itemCat= @"Cultural"; item2.itemYear=@"1979";
        [self.heritageItems addObject:item2];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 4 && self.selectedCountryRow == 6)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Old Towns of Djenne";
        item1.itemImage = @"mali_djenne";  item1.itemCat= @"Cultural"; item1.itemYear=@"1988";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Timbuktu";
        item2.itemImage = @"mali_timbuktu";  item2.itemCat= @"Cultural"; item2.itemYear=@"1988";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Tomb of Askia";
        item3.itemImage = @"mali_askia";  item3.itemCat= @"Cultural"; item3.itemYear=@"2004";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Cliff of Bandiagara";
        item4.itemImage = @"mali_cliff";  item4.itemCat= @"Mixed"; item4.itemYear=@"1989";
        [self.heritageItems addObject:item4];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 4 && self.selectedCountryRow == 7)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Banc d'Arguin National Park";
        item1.itemImage = @"mauritania_park";  item1.itemCat= @"Natural"; item1.itemYear=@"1989";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Ancient Ksour of Ouadane, Chinuetti, Tichitt and Oualate";
        item2.itemImage = @"mauritania_ksour";  item2.itemCat= @"Cultural"; item2.itemYear=@"1996";
        [self.heritageItems addObject:item2];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 4 && self.selectedCountryRow == 8)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Air and Tenere Natural Reserves";
        item1.itemImage = @"niger_tenere";  item1.itemCat= @"Natural"; item1.itemYear=@"1991";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Historic ceter of Agadez";
        item2.itemImage = @"niger_agadez";  item2.itemCat= @"Cultural"; item2.itemYear=@"2013";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"W National Park of Niger";
        item3.itemImage = @"niger_w";  item3.itemCat= @"Natural"; item3.itemYear=@"1996";
        [self.heritageItems addObject:item3];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 4 && self.selectedCountryRow == 9)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Osun Osogbo Sacred Grove";
        item1.itemImage = @"nigeria_osun";  item1.itemCat= @"Cultural"; item1.itemYear=@"2005";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Sukur Cultural Landscape";
        item2.itemImage = @"nigeria_sukur";  item2.itemCat= @"Cultural"; item2.itemYear=@"1999";
        [self.heritageItems addObject:item2];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 4 && self.selectedCountryRow == 10)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Bassari Country: Bassari, Fula and Bedik Cultural Landscapes";
        item1.itemImage = @"senegal_bassari";  item1.itemCat= @"Cultural"; item1.itemYear=@"2012";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Djoudj National Bird Sanctuary";
        item2.itemImage = @"senegal_bird";  item2.itemCat= @"Natural"; item2.itemYear=@"1981";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Island of Goree";
        item3.itemImage = @"senegal_goree";  item3.itemCat= @"Cultural"; item3.itemYear=@"1978";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Island of Saint-Louis";
        item4.itemImage = @"senegal_saint";  item4.itemCat= @"Cultural"; item4.itemYear=@"2000";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"Niokolo-Koba National Park";
        item5.itemImage = @"senegal_nio";  item5.itemCat= @"Natural"; item5.itemYear=@"1981";
        [self.heritageItems addObject:item5];
        
        XYZHeritageItem *item6 = [[XYZHeritageItem alloc] init];
        item6.itemName = @"Saloum Delta";  item6.itemCat= @"Cultural"; item6.itemYear=@"2011";
        item6.itemImage = @"senegal_saloum";
        [self.heritageItems addObject:item6];
        XYZHeritageItem *item7 = [[XYZHeritageItem alloc] init];
        item7.itemName = @"Stone Circles of Senegambia";
        item7.itemImage = @"gambia_stone"; item7.itemCat= @"Cultural"; item7.itemYear=@"2006";
        [self.heritageItems addObject:item7];
    }
    else if (self.selectedContinentRow == 0 && self.selectedRegionRow == 4 && self.selectedCountryRow == 11)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Koutammakou, the Land of the Batammariba";
        item1.itemImage = @"togo_kou";  item1.itemCat= @"Cultural"; item1.itemYear=@"2004";
        [self.heritageItems addObject:item1];
    }
    else if (self.selectedContinentRow == 1 && self.selectedRegionRow == 0 && self.selectedCountryRow == 0)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Belize Barrier Reef Reserve System";
        item1.itemImage = @"belize_reef";  item1.itemCat= @"Natural"; item1.itemYear=@"1996";
        [self.heritageItems addObject:item1];
    }
    else if (self.selectedContinentRow == 1 && self.selectedRegionRow == 0 && self.selectedCountryRow == 1)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Talamanca Range-La Amistad Reserves / La Amistad National Park";
        item1.itemImage = @"panama_tala";  item1.itemCat= @"Natural"; item1.itemYear=@"1983";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Cocos Island National Park";
        item2.itemImage = @"costa_cocos";  item2.itemCat= @"Natural"; item2.itemYear=@"1997";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Area de Conservacion Guanacaste";
        item3.itemImage = @"costa_guana";  item3.itemCat= @"Natural"; item3.itemYear=@"1999";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Precolumbian chiefdom settlements with stone spheres of the Diquis";
        item4.itemImage = @"costa_diquis";  item4.itemCat= @"Cultural"; item4.itemYear=@"2014";
        [self.heritageItems addObject:item4];

    }
    else if (self.selectedContinentRow == 1 && self.selectedRegionRow == 0 && self.selectedCountryRow == 2)
    {
        //Cuba
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Old Havana and its Fortifications";
        item1.itemImage = @"cuba_havana";  item1.itemCat= @"Cultural"; item1.itemYear=@"1982";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Trinidad and the Valley de los Ingenios";
        item2.itemImage = @"cuba_trinidad";  item2.itemCat= @"Cultural"; item2.itemYear=@"1988";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"San Pedro de la Roca Castle, Santiago de Cuba";
        item3.itemImage = @"cuba_santiago";  item3.itemCat= @"Cultural"; item3.itemYear=@"1997";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Vinales Valley";
        item4.itemImage = @"cuba_vinales";  item4.itemCat= @"Cultural"; item4.itemYear=@"1999";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"Desembarco del Granma National Park";
        item5.itemImage = @"cuba_desem";  item5.itemCat= @"Natural"; item5.itemYear=@"1999";
        [self.heritageItems addObject:item5];
        
        XYZHeritageItem *item6 = [[XYZHeritageItem alloc] init];
        item6.itemName = @"Archaeological Landscape of the First Coffee Plantations in the South-East of Cuba";  item6.itemCat= @"Cultural"; item6.itemYear=@"2000";
        item6.itemImage = @"colombia_coffee";
        [self.heritageItems addObject:item6];
        XYZHeritageItem *item7 = [[XYZHeritageItem alloc] init];
        item7.itemName = @"Alejandro de Humboldt National Park";
        item7.itemImage = @"cuba_alejandro"; item7.itemCat= @"Natural"; item7.itemYear=@"2001";
        [self.heritageItems addObject:item7];
        XYZHeritageItem *item8 = [[XYZHeritageItem alloc] init];
        item8.itemName = @"Urban Historic Centre of Cienfuegos";  item8.itemCat= @"Cultural"; item8.itemYear=@"2005";
        item8.itemImage = @"cuba_cien";
        [self.heritageItems addObject:item8];
        XYZHeritageItem *item9 = [[XYZHeritageItem alloc] init];
        item9.itemName = @"Historic Centre of Camaguey";  item8.itemCat= @"Cultural"; item9.itemYear=@"2008";
        item9.itemImage = @"cuba_cama";
        [self.heritageItems addObject:item9];
    }
    else if (self.selectedContinentRow == 1 && self.selectedRegionRow == 0 && self.selectedCountryRow == 3)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Joya de Ceren Archaeological Site";
        item1.itemImage = @"salvador_joya";  item1.itemCat= @"Cultural"; item1.itemYear=@"1993";
        [self.heritageItems addObject:item1];
    }
    else if (self.selectedContinentRow == 1 && self.selectedRegionRow == 0 && self.selectedCountryRow == 4)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Antigua Guatemala";
        item1.itemImage = @"guate_antigua";  item1.itemCat= @"Cultural"; item1.itemYear=@"1979";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Archaeological Park and Ruins of Quirigua";
        item2.itemImage = @"guate_quiri";  item2.itemCat= @"Cultural"; item2.itemYear=@"1981";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Tikal National Park";
        item3.itemImage = @"guate_tikal";  item3.itemCat= @"Mixed"; item3.itemYear=@"1985";
        [self.heritageItems addObject:item3];
    }
    else if (self.selectedContinentRow == 1 && self.selectedRegionRow == 0 && self.selectedCountryRow == 5)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Maya Site of Copan";
        item1.itemImage = @"honduras_copan";  item1.itemCat= @"Cultural"; item1.itemYear=@"1980";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Rio Platano Biosphere Reserve";
        item2.itemImage = @"honduras_rio";  item2.itemCat= @"Natural"; item2.itemYear=@"1982";
        [self.heritageItems addObject:item2];
    }
    else if (self.selectedContinentRow == 1 && self.selectedRegionRow == 0 && self.selectedCountryRow == 6)
    {
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Leon Cathedral";
        item1.itemImage = @"nicaragua_leon";  item1.itemCat= @"Cultural"; item1.itemYear=@"2011";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Ruins of Leon Viejo";
        item2.itemImage = @"nicaragua_ruins";  item2.itemCat= @"Cultural"; item2.itemYear=@"2000";
        [self.heritageItems addObject:item2];
    }
    else if (self.selectedContinentRow == 1 && self.selectedRegionRow == 0 && self.selectedCountryRow == 7)
    {
        //Panama

        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Archaeological Site of Panama Viejo and Historic District of Panama City";
        item1.itemImage = @"panama_viejo";  item1.itemCat= @"Cultural"; item1.itemYear=@"1997";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Coiba National Park and its Special Zone of Marine Protection";
        item2.itemImage = @"panama_coiba";  item2.itemCat= @"Natural"; item2.itemYear=@"2005";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Darien National Park";
        item3.itemImage = @"panama_darien";  item3.itemCat= @"Natural"; item3.itemYear=@"1981";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Fortifications on the Caribbean Side of Panama: Portobelo-San Lorenzo";
        item4.itemImage = @"panama_fort";  item4.itemCat= @"Cultural"; item4.itemYear=@"1980";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"alamanca Range-La Amistad Reserves / La Amistad National Park";
        item5.itemImage = @"panama_tala";  item5.itemCat= @"Natural"; item5.itemYear=@"1983";
        [self.heritageItems addObject:item5];
    }
    else if (self.selectedContinentRow == 1 && self.selectedRegionRow == 1 && self.selectedCountryRow == 0)
    {
        //Canada
        
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"L'Anse aux Meadows National Historic Site";
        item1.itemImage = @"canada_lanse";  item1.itemCat= @"Cultural"; item1.itemYear=@"1978";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Nahanni National Park";
        item2.itemImage = @"canada_nahanni";  item2.itemCat= @"Natural"; item2.itemYear=@"1978";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Dinosaur Provincial Park";
        item3.itemImage = @"canada_dinosaur";  item3.itemCat= @"Natural"; item3.itemYear=@"1979";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Kluane/Wrangell-St.Elias/Glacier Bay/Tatshenshini-Alsek";
        item4.itemImage = @"canada_kluane";  item4.itemCat= @"Natural"; item4.itemYear=@"1979";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"SGang Gwaay";
        item5.itemImage = @"canada_gwaay";  item5.itemCat= @"Cultural"; item5.itemYear=@"1981";
        [self.heritageItems addObject:item5];
        
        XYZHeritageItem *item6 = [[XYZHeritageItem alloc] init];
        item6.itemName = @"Head-Smashed-In Buffalo Jump";  item6.itemCat= @"Cultural"; item6.itemYear=@"1981";
        item6.itemImage = @"canada_head";
        [self.heritageItems addObject:item6];
        XYZHeritageItem *item7 = [[XYZHeritageItem alloc] init];
        item7.itemName = @"Wood Buffalo National Park";
        item7.itemImage = @"canada_head"; item7.itemCat= @"Natural"; item7.itemYear=@"1983";
        [self.heritageItems addObject:item7];
        XYZHeritageItem *item8 = [[XYZHeritageItem alloc] init];
        item8.itemName = @"Canadian Rocky Mountain Parks";  item8.itemCat= @"Natural"; item8.itemYear=@"1984";
        item8.itemImage = @"canada_rocky";
        [self.heritageItems addObject:item8];
        XYZHeritageItem *item9 = [[XYZHeritageItem alloc] init];
        item9.itemName = @"Historic District of Old Quebec";  item9.itemCat= @"Cultural"; item9.itemYear=@"1985";
        item9.itemImage = @"canada_quebec";
        [self.heritageItems addObject:item9];
        XYZHeritageItem *item10 = [[XYZHeritageItem alloc] init];
        item10.itemName = @"Gros Morne National Park";  item10.itemCat= @"Natural"; item10.itemYear=@"1987";
        item10.itemImage = @"canada_gros";
        [self.heritageItems addObject:item10];
        
        XYZHeritageItem *item11 = [[XYZHeritageItem alloc] init];
        item11.itemName = @"Waterton Glacier International Peace Park";  item11.itemCat= @"Natural"; item11.itemYear=@"1995";
        item11.itemImage = @"canada_peace";
        [self.heritageItems addObject:item11];
        XYZHeritageItem *item12 = [[XYZHeritageItem alloc] init];
        item12.itemName = @"Old Town Lunenburg";  item12.itemCat= @"Cultural"; item12.itemYear=@"1995";
        item12.itemImage = @"canada_lunen";
        [self.heritageItems addObject:item12];
        XYZHeritageItem *item13 = [[XYZHeritageItem alloc] init];
        item13.itemName = @"Miguasha National Park";  item13.itemCat= @"Natural"; item13.itemYear=@"1999";
        item13.itemImage = @"canada_miguasa";
        [self.heritageItems addObject:item13];
        XYZHeritageItem *item14 = [[XYZHeritageItem alloc] init];
        item14.itemName = @"Rideau Canal";  item14.itemCat= @"Cultural"; item14.itemYear=@"2007";
        item14.itemImage = @"canada_rideau";
        [self.heritageItems addObject:item14];
        XYZHeritageItem *item15 = [[XYZHeritageItem alloc] init];
        item15.itemName = @"Red Bay Basque Whaling Station";  item15.itemCat= @"Cultural"; item15.itemYear=@"2013";
        item15.itemImage = @"canada_redbay";
        [self.heritageItems addObject:item15];
        
        XYZHeritageItem *item16 = [[XYZHeritageItem alloc] init];
        item16.itemName = @"Joggins Fossil Cliffs";  item16.itemCat= @"Natural"; item16.itemYear=@"2008";
        item16.itemImage = @"canada_fossil";
        [self.heritageItems addObject:item16];
        XYZHeritageItem *item17 = [[XYZHeritageItem alloc] init];
        item17.itemName = @"Landscape of Grand-Pre";  item17.itemCat= @"Cultural"; item17.itemYear=@"2012";
        item17.itemImage = @"canada_grand";
        [self.heritageItems addObject:item17];
    }
    else if (self.selectedContinentRow == 1 && self.selectedRegionRow == 1 && self.selectedCountryRow == 1)
    {
        //Mexico
        
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Historic Center of Mexico City and Xochimilco";
        item1.itemImage = @"mex_city";  item1.itemCat= @"Cultural"; item1.itemYear=@"1987";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Historic Center of Oaxaca and Monte Alban";
        item2.itemImage = @"mex_oaxaca";  item2.itemCat= @"Cultural"; item2.itemYear=@"1987";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Historic Center of Puebla";
        item3.itemImage = @"mex_puebla";  item3.itemCat= @"Cultural"; item3.itemYear=@"1987";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Pre-Hispanic City and National Park of Palenque";
        item4.itemImage = @"mex_palenque";  item4.itemCat= @"Cultural"; item4.itemYear=@"1987";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"Pre-Hispanic City of Teotihuacan";
        item5.itemImage = @"mex_teoti";  item5.itemCat= @"Cultural"; item5.itemYear=@"1987";
        [self.heritageItems addObject:item5];
        
        XYZHeritageItem *item6 = [[XYZHeritageItem alloc] init];
        item6.itemName = @"Sian Ka'an";  item6.itemCat= @"Natural"; item6.itemYear=@"1987";
        item6.itemImage = @"mex_sian";
        [self.heritageItems addObject:item6];
        XYZHeritageItem *item7 = [[XYZHeritageItem alloc] init];
        item7.itemName = @"Historic Town of Guanajuato and Adjacent Mines";
        item7.itemImage = @"mex_mines"; item7.itemCat= @"Cultural"; item7.itemYear=@"1988";
        [self.heritageItems addObject:item7];
        XYZHeritageItem *item8 = [[XYZHeritageItem alloc] init];
        item8.itemName = @"Pre-Hispanic City of Chichen-Itza";  item8.itemCat= @"Cultural"; item8.itemYear=@"1988";
        item8.itemImage = @"mex_chichen";
        [self.heritageItems addObject:item8];
        XYZHeritageItem *item9 = [[XYZHeritageItem alloc] init];
        item9.itemName = @"Historic Centre of Morelia";  item9.itemCat= @"Cultural"; item9.itemYear=@"1991";
        item9.itemImage = @"mex_morelia";
        [self.heritageItems addObject:item9];
        XYZHeritageItem *item10 = [[XYZHeritageItem alloc] init];
        item10.itemName = @"El Tajin";  item10.itemCat= @"Cultural"; item10.itemYear=@"1992";
        item10.itemImage = @"mex_tajin";
        [self.heritageItems addObject:item10];
        
        XYZHeritageItem *item11 = [[XYZHeritageItem alloc] init];
        item11.itemName = @"Historic Centre of Zacatecas";  item11.itemCat= @"Cultural"; item11.itemYear=@"1993";
        item11.itemImage = @"mex_zacatecas";
        [self.heritageItems addObject:item11];
        XYZHeritageItem *item12 = [[XYZHeritageItem alloc] init];
        item12.itemName = @"Rock Paintings of the Sierra de San Francisco";  item12.itemCat= @"Cultural"; item12.itemYear=@"1993";
        item12.itemImage = @"mex_rock";
        [self.heritageItems addObject:item12];
        XYZHeritageItem *item13 = [[XYZHeritageItem alloc] init];
        item13.itemName = @"Whale Sanctuary of El Vizcaino";  item13.itemCat= @"Cultural"; item13.itemYear=@"1993";
        item13.itemImage = @"mex_whale";
        [self.heritageItems addObject:item13];
        XYZHeritageItem *item14 = [[XYZHeritageItem alloc] init];
        item14.itemName = @"Earliest 16th century monasteries on the slopes of Popocatepetl";  item14.itemCat= @"Cultural"; item14.itemYear=@"1994";
        item14.itemImage = @"mex_slope";
        [self.heritageItems addObject:item14];
        XYZHeritageItem *item15 = [[XYZHeritageItem alloc] init];
        item15.itemName = @"Historic Monuments Zone of Queretaro";  item15.itemCat= @"Cultural"; item15.itemYear=@"1996";
        item15.itemImage = @"mex_queretaro";
        [self.heritageItems addObject:item15];
        
        XYZHeritageItem *item16 = [[XYZHeritageItem alloc] init];
        item16.itemName = @"Pre-Hispanic Town of Uxmal";  item16.itemCat= @"Cultural"; item16.itemYear=@"1996";
        item16.itemImage = @"mex_uxmal";
        [self.heritageItems addObject:item16];
        XYZHeritageItem *item17 = [[XYZHeritageItem alloc] init];
        item17.itemName = @"Hospicio Cabanas";  item17.itemCat= @"Cultural"; item17.itemYear=@"1997";
        item17.itemImage = @"mex_hospicio";
        [self.heritageItems addObject:item17];
        
        XYZHeritageItem *item18 = [[XYZHeritageItem alloc] init];
        item18.itemName = @"Archaeological Zone of Paquime, Casas Grandes";  item18.itemCat= @"Cultural"; item18.itemYear=@"1997";
        item18.itemImage = @"mex_casas";
        [self.heritageItems addObject:item18];
        XYZHeritageItem *item19 = [[XYZHeritageItem alloc] init];
        item19.itemName = @"Historic Monuments Zone of Tlacotalpan";  item19.itemCat= @"Cultural"; item19.itemYear=@"1998";
        item19.itemImage = @"mex_tlaco";
        [self.heritageItems addObject:item19];
        XYZHeritageItem *item20 = [[XYZHeritageItem alloc] init];
        item20.itemName = @"Archaeological Monuments Zone of Xochicalco";  item20.itemCat= @"Cultural"; item20.itemYear=@"1999";
        item20.itemImage = @"mex_xochi";
        [self.heritageItems addObject:item20];
        
        XYZHeritageItem *item21 = [[XYZHeritageItem alloc] init];
        item21.itemName = @"Historic Fortified Town of Campeche";
        item21.itemImage = @"mex_campeche";  item21.itemCat= @"Cultural"; item21.itemYear=@"1999";
        [self.heritageItems addObject:item21];
        XYZHeritageItem *item22 = [[XYZHeritageItem alloc] init];
        item22.itemName = @"Ancient Maya City and Protected Tropical Forests of Calakmul, Campeche";
        item22.itemImage = @"mex_maya";  item22.itemCat= @"Mixed"; item22.itemYear=@"2002";
        [self.heritageItems addObject:item22];
        XYZHeritageItem *item23 = [[XYZHeritageItem alloc] init];
        item23.itemName = @"Franciscan Missions in the Sierra Gorda";
        item23.itemImage = @"mex_franciscan";  item23.itemCat= @"Cultural"; item23.itemYear=@"2003";
        [self.heritageItems addObject:item23];
        XYZHeritageItem *item24 = [[XYZHeritageItem alloc] init];
        item24.itemName = @"Luis Barragan House and Studio";
        item24.itemImage = @"mex_luis";  item24.itemCat= @"Cultural"; item24.itemYear=@"2003";
        [self.heritageItems addObject:item24];
        XYZHeritageItem *item25 = [[XYZHeritageItem alloc] init];
        item25.itemName = @"Islands and Protected Areas of the Gulf of California";
        item25.itemImage = @"mex_california";  item25.itemCat= @"Natural"; item25.itemYear=@"2005";
        [self.heritageItems addObject:item25];
        

        XYZHeritageItem *item26 = [[XYZHeritageItem alloc] init];
        item26.itemName = @"Agave Landscape and Ancient Industrial Facilities of Tequila";  item26.itemCat= @"Cultural"; item26.itemYear=@"2006";
        item26.itemImage = @"mex_agave";
        [self.heritageItems addObject:item26];
        XYZHeritageItem *item27 = [[XYZHeritageItem alloc] init];
        item27.itemName = @"Central University City Campus of the Universidad Nacional Autonoma de Mexico (UNAM)";
        item27.itemImage = @"mex_unam"; item27.itemCat= @"Cultural"; item27.itemYear=@"2007";
        [self.heritageItems addObject:item27];
        XYZHeritageItem *item28 = [[XYZHeritageItem alloc] init];
        item28.itemName = @"Protective town of San Miguel de Allende and Sanctuary of Jesus Nazareno de Atotonilco";  item28.itemCat= @"Cultural"; item28.itemYear=@"2008";
        item28.itemImage = @"mex_sanmiguel";
        [self.heritageItems addObject:item28];
        XYZHeritageItem *item29 = [[XYZHeritageItem alloc] init];
        item29.itemName = @"Monarch Butterfly Biosphere Reserve";  item29.itemCat= @"Natural"; item29.itemYear=@"2008";
        item29.itemImage = @"mex_monarch";
        [self.heritageItems addObject:item29];
        XYZHeritageItem *item30 = [[XYZHeritageItem alloc] init];
        item30.itemName = @"Camino Real de Tierra Adentro";  item30.itemCat= @"Cultural"; item30.itemYear=@"2010";
        item30.itemImage = @"mex_camino";
        [self.heritageItems addObject:item30];
        
        XYZHeritageItem *item31 = [[XYZHeritageItem alloc] init];
        item31.itemName = @"Prehistoric Caves of Yagul and Mitla in the Central Valley of Oaxaca";
        item31.itemImage = @"mex_yagul";  item31.itemCat= @"Cultural"; item31.itemYear=@"2010";
        [self.heritageItems addObject:item31];
        XYZHeritageItem *item32 = [[XYZHeritageItem alloc] init];
        item32.itemName = @"El Pinacate y Gran Desierto de Altar Biosphere Reserve";
        item32.itemImage = @"mex_pinacate";  item32.itemCat= @"Natural"; item32.itemYear=@"2013";
        [self.heritageItems addObject:item32];
    }
    else if (self.selectedContinentRow == 1 && self.selectedRegionRow == 1 && self.selectedCountryRow == 2)
    {
        //USA
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Mesa Verde National Park";
        item1.itemImage = @"usa_mesa";  item1.itemCat= @"Natural"; item1.itemYear=@"1978";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Yellowstone National Park";
        item2.itemImage = @"usa_yellowstone";  item2.itemCat= @"Natural"; item2.itemYear=@"1978";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Everglades National Park";
        item3.itemImage = @"usa_everglades";  item3.itemCat= @"Natural"; item3.itemYear=@"1979";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Kluane / Wrangell and St. Elias / Glacier Bay / Tatshenshini-Alsek";
        item4.itemImage = @"usa_kluane";  item4.itemCat= @"Natural"; item4.itemYear=@"1979";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"Grand Canyon National Park";
        item5.itemImage = @"usa_canyon";  item5.itemCat= @"Natural"; item5.itemYear=@"1979";
        [self.heritageItems addObject:item5];
        
        XYZHeritageItem *item6 = [[XYZHeritageItem alloc] init];
        item6.itemName = @"Independence Hall";  item6.itemCat= @"Cultural"; item6.itemYear=@"1979";
        item6.itemImage = @"usa_independence";
        [self.heritageItems addObject:item6];
        XYZHeritageItem *item7 = [[XYZHeritageItem alloc] init];
        item7.itemName = @"Mammoth Cave National Park";
        item7.itemImage = @"usa_mammoth"; item7.itemCat= @"Natural"; item7.itemYear=@"1981";
        [self.heritageItems addObject:item7];
        XYZHeritageItem *item8 = [[XYZHeritageItem alloc] init];
        item8.itemName = @"Olympic National Park";  item8.itemCat= @"Natural"; item8.itemYear=@"1981";
        item8.itemImage = @"usa_olympic";
        [self.heritageItems addObject:item8];
        XYZHeritageItem *item9 = [[XYZHeritageItem alloc] init];
        item9.itemName = @"Carlsbad Caverns National Park";  item9.itemCat= @"Natural"; item9.itemYear=@"1981";
        item9.itemImage = @"usa_carlsbad";
        [self.heritageItems addObject:item9];
        XYZHeritageItem *item10 = [[XYZHeritageItem alloc] init];
        item10.itemName = @"Cahokia Mounds State Historic Site";  item10.itemCat= @"Cultural"; item10.itemYear=@"1982";
        item10.itemImage = @"usa_cahokia";
        [self.heritageItems addObject:item10];
        
        XYZHeritageItem *item11 = [[XYZHeritageItem alloc] init];
        item11.itemName = @"Great Smoky Mountains National Park";  item11.itemCat= @"Natural"; item11.itemYear=@"1983";
        item11.itemImage = @"usa_smoky";
        [self.heritageItems addObject:item11];
        XYZHeritageItem *item12 = [[XYZHeritageItem alloc] init];
        item12.itemName = @"La Fortaleza and San Juan National Historic Site";  item12.itemCat= @"Cultural"; item12.itemYear=@"1983";
        item12.itemImage = @"usa_la";
        [self.heritageItems addObject:item12];
        XYZHeritageItem *item13 = [[XYZHeritageItem alloc] init];
        item13.itemName = @"Statue of Liberty";  item13.itemCat= @"Cultural"; item13.itemYear=@"1984";
        item13.itemImage = @"usa_liberty";
        [self.heritageItems addObject:item13];
        XYZHeritageItem *item14 = [[XYZHeritageItem alloc] init];
        item14.itemName = @"Yosemite National Park";  item14.itemCat= @"Natural"; item14.itemYear=@"1984";
        item14.itemImage = @"usa_yosemite";
        [self.heritageItems addObject:item14];
        XYZHeritageItem *item15 = [[XYZHeritageItem alloc] init];
        item15.itemName = @"Chaco Culture National Historical Park";  item15.itemCat= @"Cultural"; item15.itemYear=@"1987";
        item15.itemImage = @"usa_chaco";
        [self.heritageItems addObject:item15];
        
        XYZHeritageItem *item16 = [[XYZHeritageItem alloc] init];
        item16.itemName = @"Hawaii Volcanoes National Park";  item16.itemCat= @"Natural"; item16.itemYear=@"1987";
        item16.itemImage = @"usa_hawaii";
        [self.heritageItems addObject:item16];
        XYZHeritageItem *item17 = [[XYZHeritageItem alloc] init];
        item17.itemName = @"Monticello and the University of Virginia";  item17.itemCat= @"Cultural"; item17.itemYear=@"1987";
        item17.itemImage = @"usa_monticello";
        [self.heritageItems addObject:item17];
        XYZHeritageItem *item18 = [[XYZHeritageItem alloc] init];
        item18.itemName = @"Taos Pueblo";  item18.itemCat= @"Cultural"; item18.itemYear=@"1992";
        item18.itemImage = @"usa_taos";
        [self.heritageItems addObject:item18];
        XYZHeritageItem *item19 = [[XYZHeritageItem alloc] init];
        item19.itemName = @"Redwood National and State Parks";  item19.itemCat= @"Natural"; item19.itemYear=@"1980";
        item19.itemImage = @"usa_red";
        [self.heritageItems addObject:item19];
        XYZHeritageItem *item20 = [[XYZHeritageItem alloc] init];
        item20.itemName = @"Waterton-Glacier International Peace Park";  item20.itemCat= @"Natural"; item20.itemYear=@"1995";
        item20.itemImage = @"usa_waterton";
        [self.heritageItems addObject:item20];
        
        XYZHeritageItem *item21 = [[XYZHeritageItem alloc] init];
        item21.itemName = @"Papahanaumokuakea";  item21.itemCat= @"Mixed"; item21.itemYear=@"2010";
        item21.itemImage = @"usa_papa";
        [self.heritageItems addObject:item21];
        XYZHeritageItem *item22 = [[XYZHeritageItem alloc] init];
        item22.itemName = @"Monumental Earthworks of Poverty Point";  item22.itemCat= @"Cultural"; item22.itemYear=@"2014";
        item22.itemImage = @"usa_poverty";
        [self.heritageItems addObject:item22];
    }
    else if (self.selectedContinentRow == 1 && self.selectedRegionRow == 2 && self.selectedCountryRow == 0)
    {
        //Argentina
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Los Glaciares National Park";
        item1.itemImage = @"arg_los";  item1.itemCat= @"Natural"; item1.itemYear=@"1981";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Jesuit Missions of the Guaranis: San Ignacio Mini, Santa Ana, Nuestra Se–ora de Loreto and Santa Maria Mayors";
        item2.itemImage = @"arg_jesuit";  item2.itemCat= @"Cultural"; item2.itemYear=@"1983";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Iguazu National Park";
        item3.itemImage = @"arg_iguazu";  item3.itemCat= @"Natural"; item3.itemYear=@"1984";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Cueva de las Manos, Rio Pinturas";
        item4.itemImage = @"arg_cueva";  item4.itemCat= @"Cultural"; item4.itemYear=@"1999";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"Peninsula Valdes";
        item5.itemImage = @"arg_valdes";  item5.itemCat= @"Natural"; item5.itemYear=@"1999";
        [self.heritageItems addObject:item5];
     
        XYZHeritageItem *item6 = [[XYZHeritageItem alloc] init];
        item6.itemName = @"Ischigualasto / Talampaya Natural Parks";  item6.itemCat= @"Natural"; item6.itemYear=@"2000";
        item6.itemImage = @"arg_ischi";
        [self.heritageItems addObject:item6];
        XYZHeritageItem *item7 = [[XYZHeritageItem alloc] init];
        item7.itemName = @"Jesuit Block and Estancias of Cordoba";
        item7.itemImage = @"arg_cordoba"; item7.itemCat= @"Cultural"; item7.itemYear=@"2000";
        [self.heritageItems addObject:item7];
        XYZHeritageItem *item8 = [[XYZHeritageItem alloc] init];
        item8.itemName = @"Quebrada de Humahuaca";  item8.itemCat= @"Cultural"; item8.itemYear=@"2003";
        item8.itemImage = @"arg_quebrada";
        [self.heritageItems addObject:item8];
        XYZHeritageItem *item9 = [[XYZHeritageItem alloc] init];
        item9.itemName = @"Qhapaq Nan, Andean Road System";  item9.itemCat= @"Cultural"; item9.itemYear=@"2014";
        item9.itemImage = @"arg_qhapaq";
        [self.heritageItems addObject:item9];
    }
    else if (self.selectedContinentRow == 1 && self.selectedRegionRow == 2 && self.selectedCountryRow == 1)
    {
        //Bolivia
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"City of Potosi";
        item1.itemImage = @"bolivia_potosi";  item1.itemCat= @"Cultural"; item1.itemYear=@"1987";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Fuerte de Samaipata";
        item2.itemImage = @"bolivia_fuerte";  item2.itemCat= @"Cultural"; item2.itemYear=@"1988";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Historic City of Sucre";
        item3.itemImage = @"bolivia_sucre";  item3.itemCat= @"Cultural"; item3.itemYear=@"1997";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Jesuit Missions of Chiquitos";
        item4.itemImage = @"bolivia_jesuit";  item4.itemCat= @"Cultural"; item4.itemYear=@"1990";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"Noel Kempff Mercado National Park";
        item5.itemImage = @"bolivia_noel";  item5.itemCat= @"Natural"; item5.itemYear=@"2000";
        [self.heritageItems addObject:item5];
        
        XYZHeritageItem *item6 = [[XYZHeritageItem alloc] init];
        item6.itemName = @"Tiwanaku: Spiritual and Political Centre of the Tiwanaku Culture";  item6.itemCat= @"Cultural"; item6.itemYear=@"2000";
        item6.itemImage = @"bolivia_tiwanaku";
        [self.heritageItems addObject:item6];
        XYZHeritageItem *item7 = [[XYZHeritageItem alloc] init];
        item7.itemName = @"Qhapaq Nan, Andean Road System";
        item7.itemImage = @"arg_qhapaq"; item7.itemCat= @"Cultural"; item7.itemYear=@"2014";
        [self.heritageItems addObject:item7];
    }
    else if (self.selectedContinentRow == 1 && self.selectedRegionRow == 2 && self.selectedCountryRow == 2)
    {
        // Brazil
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"Atlantic Forest South-East Reserves";
        item1.itemImage = @"bra_atlantic";  item1.itemCat= @"Natural"; item1.itemYear=@"1999";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"Brasilia";
        item2.itemImage = @"bra_brasilia";  item2.itemCat= @"Cultural"; item2.itemYear=@"1987";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"Brazilian Atlantic Islands: Fernando de Noronha and Atol das Rocas Reserves";
        item3.itemImage = @"bra_islands";  item3.itemCat= @"Natural"; item3.itemYear=@"2001";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"Central Amazon Conservation Complex";
        item4.itemImage = @"bra_amazon";  item4.itemCat= @"Natural"; item4.itemYear=@"2000";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"Cerrado Protected Areas: Chapada dos Veadeiros and Emas National Parks";
        item5.itemImage = @"bra_cerrado";  item5.itemCat= @"Natural"; item5.itemYear=@"2001";
        [self.heritageItems addObject:item5];
        
        XYZHeritageItem *item6 = [[XYZHeritageItem alloc] init];
        item6.itemName = @"";  item6.itemCat= @"Cultural"; item6.itemYear=@"";
        item6.itemImage = @"";
        [self.heritageItems addObject:item6];
        XYZHeritageItem *item7 = [[XYZHeritageItem alloc] init];
        item7.itemName = @"";
        item7.itemImage = @""; item7.itemCat= @"Cultural"; item7.itemYear=@"";
        [self.heritageItems addObject:item7];
        XYZHeritageItem *item8 = [[XYZHeritageItem alloc] init];
        item8.itemName = @"";  item8.itemCat= @"Cultural"; item8.itemYear=@"";
        item8.itemImage = @"";
        [self.heritageItems addObject:item8];
        XYZHeritageItem *item9 = [[XYZHeritageItem alloc] init];
        item9.itemName = @"";  item9.itemCat= @"Cultural"; item9.itemYear=@"";
        item9.itemImage = @"";
        [self.heritageItems addObject:item9];
        XYZHeritageItem *item10 = [[XYZHeritageItem alloc] init];
        item10.itemName = @"";  item10.itemCat= @"Cultural"; item10.itemYear=@"";
        item10.itemImage = @"";
        [self.heritageItems addObject:item10];
        
        XYZHeritageItem *item11 = [[XYZHeritageItem alloc] init];
        item11.itemName = @"";  item11.itemCat= @"Cultural"; item11.itemYear=@"";
        item11.itemImage = @"";
        [self.heritageItems addObject:item11];
        XYZHeritageItem *item12 = [[XYZHeritageItem alloc] init];
        item12.itemName = @"";  item12.itemCat= @"Cultural"; item12.itemYear=@"";
        item12.itemImage = @"";
        [self.heritageItems addObject:item12];
        XYZHeritageItem *item13 = [[XYZHeritageItem alloc] init];
        item13.itemName = @"";  item13.itemCat= @"Cultural"; item13.itemYear=@"";
        item13.itemImage = @"";
        [self.heritageItems addObject:item13];
        XYZHeritageItem *item14 = [[XYZHeritageItem alloc] init];
        item14.itemName = @"";  item14.itemCat= @"Cultural"; item14.itemYear=@"";
        item14.itemImage = @"";
        [self.heritageItems addObject:item14];
        XYZHeritageItem *item15 = [[XYZHeritageItem alloc] init];
        item15.itemName = @"";  item15.itemCat= @"Cultural"; item15.itemYear=@"";
        item15.itemImage = @"";
        [self.heritageItems addObject:item15];
        
        XYZHeritageItem *item16 = [[XYZHeritageItem alloc] init];
        item16.itemName = @"";  item16.itemCat= @"Cultural"; item16.itemYear=@"";
        item16.itemImage = @"";
        [self.heritageItems addObject:item16];
        XYZHeritageItem *item17 = [[XYZHeritageItem alloc] init];
        item17.itemName = @"";  item17.itemCat= @"Cultural"; item17.itemYear=@"";
        item17.itemImage = @"";
        [self.heritageItems addObject:item17];
        XYZHeritageItem *item18 = [[XYZHeritageItem alloc] init];
        item18.itemName = @"";  item18.itemCat= @"Cultural"; item18.itemYear=@"";
        item18.itemImage = @"";
        [self.heritageItems addObject:item18];
        XYZHeritageItem *item19 = [[XYZHeritageItem alloc] init];
        item19.itemName = @"";  item19.itemCat= @"Cultural"; item19.itemYear=@"";
        item19.itemImage = @"";
        [self.heritageItems addObject:item19];
        XYZHeritageItem *item20 = [[XYZHeritageItem alloc] init];
        item20.itemName = @"";  item20.itemCat= @"Cultural"; item20.itemYear=@"";
        item20.itemImage = @"";
        [self.heritageItems addObject:item20];
    }

    else if (self.selectedContinentRow == 2 && self.selectedRegionRow == 0 && self.selectedCountryRow == 0)
    {
        // China
        XYZHeritageItem *item1 = [[XYZHeritageItem alloc] init];
        item1.itemName = @"";
        item1.itemImage = @"";  item1.itemCat= @"Cultural"; item1.itemYear=@"";
        [self.heritageItems addObject:item1];
        XYZHeritageItem *item2 = [[XYZHeritageItem alloc] init];
        item2.itemName = @"";
        item2.itemImage = @"";  item2.itemCat= @"Cultural"; item2.itemYear=@"";
        [self.heritageItems addObject:item2];
        XYZHeritageItem *item3 = [[XYZHeritageItem alloc] init];
        item3.itemName = @"";
        item3.itemImage = @"";  item3.itemCat= @"Cultural"; item3.itemYear=@"";
        [self.heritageItems addObject:item3];
        XYZHeritageItem *item4 = [[XYZHeritageItem alloc] init];
        item4.itemName = @"";
        item4.itemImage = @"";  item4.itemCat= @"Cultural"; item4.itemYear=@"";
        [self.heritageItems addObject:item4];
        XYZHeritageItem *item5 = [[XYZHeritageItem alloc] init];
        item5.itemName = @"";
        item5.itemImage = @"";  item5.itemCat= @"Cultural"; item5.itemYear=@"";
        [self.heritageItems addObject:item5];
        
        XYZHeritageItem *item6 = [[XYZHeritageItem alloc] init];
        item6.itemName = @"";  item6.itemCat= @"Cultural"; item6.itemYear=@"";
        item6.itemImage = @"";
        [self.heritageItems addObject:item6];
        XYZHeritageItem *item7 = [[XYZHeritageItem alloc] init];
        item7.itemName = @"";
        item7.itemImage = @""; item7.itemCat= @"Cultural"; item7.itemYear=@"";
        [self.heritageItems addObject:item7];
        XYZHeritageItem *item8 = [[XYZHeritageItem alloc] init];
        item8.itemName = @"";  item8.itemCat= @"Cultural"; item8.itemYear=@"";
        item8.itemImage = @"";
        [self.heritageItems addObject:item8];
        XYZHeritageItem *item9 = [[XYZHeritageItem alloc] init];
        item9.itemName = @"";  item9.itemCat= @"Cultural"; item9.itemYear=@"";
        item9.itemImage = @"";
        [self.heritageItems addObject:item9];
        XYZHeritageItem *item10 = [[XYZHeritageItem alloc] init];
        item10.itemName = @"";  item10.itemCat= @"Cultural"; item10.itemYear=@"";
        item10.itemImage = @"";
        [self.heritageItems addObject:item10];
        
        XYZHeritageItem *item11 = [[XYZHeritageItem alloc] init];
        item11.itemName = @"";  item11.itemCat= @"Cultural"; item11.itemYear=@"";
        item11.itemImage = @"";
        [self.heritageItems addObject:item11];
        XYZHeritageItem *item12 = [[XYZHeritageItem alloc] init];
        item12.itemName = @"";  item12.itemCat= @"Cultural"; item12.itemYear=@"";
        item12.itemImage = @"";
        [self.heritageItems addObject:item12];
        XYZHeritageItem *item13 = [[XYZHeritageItem alloc] init];
        item13.itemName = @"";  item13.itemCat= @"Cultural"; item13.itemYear=@"";
        item13.itemImage = @"";
        [self.heritageItems addObject:item13];
        XYZHeritageItem *item14 = [[XYZHeritageItem alloc] init];
        item14.itemName = @"";  item14.itemCat= @"Cultural"; item14.itemYear=@"";
        item14.itemImage = @"";
        [self.heritageItems addObject:item14];
        XYZHeritageItem *item15 = [[XYZHeritageItem alloc] init];
        item15.itemName = @"";  item15.itemCat= @"Cultural"; item15.itemYear=@"";
        item15.itemImage = @"";
        [self.heritageItems addObject:item15];
        
        XYZHeritageItem *item16 = [[XYZHeritageItem alloc] init];
        item16.itemName = @"";  item16.itemCat= @"Cultural"; item16.itemYear=@"";
        item16.itemImage = @"";
        [self.heritageItems addObject:item16];
        XYZHeritageItem *item17 = [[XYZHeritageItem alloc] init];
        item17.itemName = @"";  item17.itemCat= @"Cultural"; item17.itemYear=@"";
        item17.itemImage = @"";
        [self.heritageItems addObject:item17];
        XYZHeritageItem *item18 = [[XYZHeritageItem alloc] init];
        item18.itemName = @"";  item18.itemCat= @"Cultural"; item18.itemYear=@"";
        item18.itemImage = @"";
        [self.heritageItems addObject:item18];
        XYZHeritageItem *item19 = [[XYZHeritageItem alloc] init];
        item19.itemName = @"";  item19.itemCat= @"Cultural"; item19.itemYear=@"";
        item19.itemImage = @"";
        [self.heritageItems addObject:item19];
        XYZHeritageItem *item20 = [[XYZHeritageItem alloc] init];
        item20.itemName = @"";  item20.itemCat= @"Cultural"; item20.itemYear=@"";
        item20.itemImage = @"";
        [self.heritageItems addObject:item20];
    }
   

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.heritageItems = [[NSMutableArray alloc] init];
    
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

#pragma mark -
#pragma mark ===Table view data source===
#pragma mark -

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.heritageItems count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIColor* color;
    
    //XYZHeritageDetailTableCell *cell = (XYZHeritageDetailTableCell *)[tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCellHeritage" forIndexPath:indexPath];
    
    //XYZHeritageDetailTableCell *cell = (XYZHeritageDetailTableCell *)[tableView dequeueReusableCellWithIdentifier:@"XYZHeritageDetailTableCell" forIndexPath:indexPath];
    
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"XYZHeritageDetailTableCell" ];
    
    //cell = [[XYZHeritageTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"ListPrototypeCellHeritage"] ;
    
    if (cell == nil) {
        //cell = [[XYZHeritageDetailTableCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"XYZHeritageDetailTableCell"];
        //cell.selectionStyle = UITableViewCellSelectionStyleNone;
        //NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"XYZHeritageDetailTableCell" owner:self options:nil];
        //cell = [nib objectAtIndex:0];
        
        //[self.heritageCellNib instantiateWithOwner:self options:nil];
        cell = self.heritageCell;
        self.heritageCell = nil;
    }
    
    /*if (cell == nil)
    {
        cell = [[XYZCountryTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ListPrototypeCellHeritage"] ;
        cell.textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        cell.textLabel.numberOfLines = 0;
        cell.textLabel.font = [UIFont fontWithName:@"Helvetica" size:17.0];
    }*/
    
    XYZHeritageItem *heritageItem = [self.heritageItems objectAtIndex:indexPath.row];
    
    UIImageView *imageLabel = (UIImageView *)[cell viewWithTag:XYZ_HERITAGECELLTAG_IMAGE];
    UIImage *theImage = [UIImage imageNamed:heritageItem.itemImage];
    imageLabel.image = theImage;
    
    UILabel *nameLabel = (UILabel *)[cell viewWithTag:XYZ_HERITAGECELLTAG_NAME];
    nameLabel.lineBreakMode = NSLineBreakByWordWrapping;
    nameLabel.numberOfLines = 0;
    nameLabel.text = heritageItem.itemName;
    if (nameLabel.text.length > 45)
    {
        nameLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:12.0f];
    }
    
    // set the text color
    if ([heritageItem.itemCat isEqualToString:@"Cultural"])
    {
        color = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
    }
    else if ([heritageItem.itemCat isEqualToString:@"Natural"])
    {
        color = [UIColor colorWithRed:0 green:1 blue:0 alpha:1];
    }
    else if ([heritageItem.itemCat isEqualToString:@"Mixed"])
    {
        color = [UIColor colorWithRed:1 green:1 blue:0 alpha:1];
    }
    UILabel *typeLabel = (UILabel *)[cell viewWithTag:XYZ_HERITAGECELLTAG_TYPE];
    typeLabel.text = heritageItem.itemCat;
    typeLabel.textColor = color;
    
    UILabel *yearLabel = (UILabel *)[cell viewWithTag:XYZ_HERITAGECELLTAG_YEAR];
    yearLabel.text = heritageItem.itemYear;
    
    // add separator per cell
    UIView * separatorView = [[UIView alloc] initWithFrame:CGRectMake(0, cell.frame.size.height-1, cell.frame.size.width, 1)];
    [separatorView setBackgroundColor:[UIColor lightGrayColor]];
    [separatorView setAlpha:0.8f];
    [cell addSubview:separatorView];
    
    /*cell.nameLabel.text = heritageItem.itemName;
    
    // set the text color
    if ([heritageItem.itemCat isEqualToString:@"Cultural"])
    {
        UIColor* red = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
        //cell.detailTextLabel.textColor = red;
        cell.typeLabel.textColor = red;
    }
    else if ([heritageItem.itemCat isEqualToString:@"Natural"])
    {
        UIColor* green = [UIColor colorWithRed:0 green:1 blue:0 alpha:1];
        //cell.detailTextLabel.textColor = green;
        cell.typeLabel.textColor = green;
    }
    //cell.detailTextLabel.text = heritageItem.itemCat;
    cell.typeLabel.text = heritageItem.itemCat;
    
    //cell.year.text = heritageItem.itemYear;
    cell.yearLabel.text = heritageItem.itemYear;

    //[cell.contentView addSubview: cell.year];
    
    // add separator per cell
    UIView * separatorView = [[UIView alloc] initWithFrame:CGRectMake(0, cell.frame.size.height-1, cell.frame.size.width, 1)];
    [separatorView setBackgroundColor:[UIColor lightGrayColor]];
    [separatorView setAlpha:0.8f];
    [cell addSubview:separatorView];
    
    UIImage *theImage = [UIImage imageNamed:heritageItem.itemImage];
    //cell.imageView.image = theImage;
    cell.thumbnailImageView.image = theImage;*/
    
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

#pragma mark -
#pragma mark === Accessors ===
#pragma mark -

/*- (UINib *)heritageCellNib
{
    if (!_heritageCellNib)
    {
        _heritageCellNib = [UINib nibWithNibName:@"HeritageCell" bundle:nil];
    }
    return _heritageCellNib;
}*/

@end
