//
//  ViewController.m
//  Myths2014
//
//  Created by Dan Weissbluth on 8/14/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ViewController.h"
#import "SleepViewController.h"
#import "EatingViewController.h"
#import "IllnessViewController.h"
#import "VaccineViewController.h"
#import "DevelopmentViewController.h"
#import "SkinViewController.h"
#import "AllergyViewController.h"
#import "BreastfeedingViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *globalMyths;



@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.globalMyths = [NSMutableArray arrayWithObjects:
                  @"Sleep Myths",
                  @"Eating Myths",
                  @"Illness Myths",
                  @"Vaccine Myths",
                  @"Development Myths",
                  @"Skin Myths",
                  @"Allergy Myths",
                  @"Breastfeeding Myths",
                  nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.globalMyths.count;
}


-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    cell.textLabel.text = [self.globalMyths objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *selectedCellString = [self.globalMyths objectAtIndex:indexPath.row];
    if ([selectedCellString isEqualToString:@"Sleep Myths"])
    {
        [self performSegueWithIdentifier:@"SleepSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Eating Myths"])
    {
        [self performSegueWithIdentifier:@"EatingSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Illness Myths"])
    {
        [self performSegueWithIdentifier:@"IllnessSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Vaccine Myths"])
    {
        [self performSegueWithIdentifier:@"VaccineSegue" sender:self];

    }else if ([selectedCellString isEqualToString:@"Development Myths"])
    {
        [self performSegueWithIdentifier:@"DevelopmentSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Skin Myths"])
    {
        [self performSegueWithIdentifier:@"SkinSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Breastfeeding Myths"])
    {
        [self performSegueWithIdentifier:@"BreastfeedingSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Allergy Myths"])
    {
        [self performSegueWithIdentifier:@"AllergySegue" sender:self];
    }

}


@end;