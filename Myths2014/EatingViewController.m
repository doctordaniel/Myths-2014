//
//  EatingViewController.m
//  Myths2014
//
//  Created by Dan Weissbluth on 8/14/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "EatingViewController.h"
#import "PopularEating.h"
#import "EnergyDrink.h"
#import "MomsDiet.h"
#import "CureforColic.h"
#import "BottleFed.h"
#import "RiceCerealSolidFood.h"

@interface EatingViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *eatingTableView;

@property NSMutableArray *eatingMyths;
@end

@implementation EatingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.eatingMyths = [NSMutableArray arrayWithObjects:
                       @"Popular Eating Myths",
                       @"Kids Need Energy Drinks",
                       @"Mom's Diet Makes For a Gassy Baby",
                       @"You Can Buy a Cure for Colic",
                       @"Bottle-fed Babies Have a Weaker Bond",
                       @"Rice Cereal Should be First Solid Food",
                       nil];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.eatingMyths.count;
}


-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EatingCell"];
    cell.textLabel.text = [self.eatingMyths objectAtIndex:indexPath.row];
    cell.textLabel.numberOfLines=2;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *selectedCellString = [self.eatingMyths objectAtIndex:indexPath.row];
    if ([selectedCellString isEqualToString:@"Popular Eating Myths"])
    {
        [self performSegueWithIdentifier:@"popularSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Kids Need Energy Drinks"])
    {
        [self performSegueWithIdentifier:@"energySegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Mom's Diet Makes For a Gassy Baby"])
    {
        [self performSegueWithIdentifier:@"momsdietSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"You Can Buy a Cure for Colic"])
    {
        [self performSegueWithIdentifier:@"cureforcolicSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Bottle-fed Babies Have a Weaker Bond"])
    {
        [self performSegueWithIdentifier:@"bottlefedSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Rice Cereal Should be First Solid Food"])
    {
        [self performSegueWithIdentifier:@"solidSegue" sender:self];
    }
}
@end
