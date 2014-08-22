//
//  BreastfeedingViewController.m
//  Myths2014
//
//  Created by Dan Weissbluth on 8/14/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "BreastfeedingViewController.h"
#import "MomCold.h"
#import "ExtraWater.h"

@interface BreastfeedingViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableViewBreast;

@property NSMutableArray *breastfeedingMyths;
@end

@implementation BreastfeedingViewController



- (void)viewDidLoad
{
    {
        [super viewDidLoad];
        self.breastfeedingMyths = [NSMutableArray arrayWithObjects:
                            @"Breastfed Babies Need Extra Water",
                            @"No Breastfeeding if Mom has a Cold",
                            nil];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableViewBreast numberOfRowsInSection:(NSInteger)section
{
    return self.breastfeedingMyths.count;
}


-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BreastfeedingCell"];
    cell.textLabel.text = [self.breastfeedingMyths objectAtIndex:indexPath.row];

    cell.textLabel.numberOfLines=2;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *selectedCellString = [self.breastfeedingMyths objectAtIndex:indexPath.row];
    if ([selectedCellString isEqualToString:@"Breastfed Babies Need Extra Water"])
    {
        [self performSegueWithIdentifier:@"extraWaterSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"No Breastfeeding if Mom has a Cold"])
    {
        [self performSegueWithIdentifier:@"momColdSegue" sender:self];
    }
}
@end
