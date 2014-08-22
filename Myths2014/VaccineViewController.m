//
//  VaccineViewController.m
//  Myths2014
//
//  Created by Dan Weissbluth on 8/14/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "VaccineViewController.h"
#import "MMR.h"
#import "Flushot.h"
#import "ImmuneSystem.h"
#import "Spacing.h"
#import "VaccineEffective.h"
#import "VaccineSafety.h"

@interface VaccineViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *vaccineTableView;

@property NSMutableArray *vaccineMyths;
@end

@implementation VaccineViewController

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
    self.vaccineMyths = [NSMutableArray arrayWithObjects:
                       @"MMR Vaccine Causes Autism",
                       @"The 'Flu shot' causes kids to get the Flu",
                       @"Baby Immune Systems and Vaccines",
                       @"Spacing Out Vaccines is Safe",
                       @"Vaccines are not Effective",
                       @"Vaccines are not Safe",
                       nil];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.vaccineMyths.count;
}


-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VaccineCell"];
    cell.textLabel.text = [self.vaccineMyths objectAtIndex:indexPath.row];
    cell.textLabel.numberOfLines=2;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *selectedCellString = [self.vaccineMyths objectAtIndex:indexPath.row];
    if ([selectedCellString isEqualToString:@"MMR Vaccine Causes Autism"])
    {
        [self performSegueWithIdentifier:@"MMRSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"The 'Flu shot' causes kids to get the Flu"])
    {
        [self performSegueWithIdentifier:@"FlushotSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Baby Immune Systems and Vaccines"])
    {
        [self performSegueWithIdentifier:@"ImmuneSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Spacing Out Vaccines is Safe"])
    {
        [self performSegueWithIdentifier:@"SpacingSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Vaccines are not Effective"])
    {
        [self performSegueWithIdentifier:@"VaccineEffectiveSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Vaccines are not Safe"])
    {
        [self performSegueWithIdentifier:@"VaccineSafetySegue" sender:self];
    }
}
@end