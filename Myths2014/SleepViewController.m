//
//  SleepViewController.m
//  Myths2014
//
//  Created by Dan Weissbluth on 8/14/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "SleepViewController.h"
#import "Cosleeping.h"
#import "TwelveHours.h"
#import "Needtonap.h"
#import "SleepSchedule.h"
#import "Bassinet.h"
#import "Ricecereal.h"

@interface SleepViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableViewSleep;

@property NSMutableArray *sleepMyths;
@end

@implementation SleepViewController

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
    self.sleepMyths = [NSMutableArray arrayWithObjects:
                        @"Co-Sleeping is Safe",
                        @"Twelve Hours Sleep Equals Well-Rested",
                        @"Some Newborns do not Need to Nap",
                        @"You can Get Your Newborn on a Schedule",
                        @"Newborns Sleep Best in Bassinets",
                        @"Rice Cereal Helps Babies Sleep Longer",
                        nil];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.sleepMyths.count;
}


-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SleepCell"];
    cell.textLabel.text = [self.sleepMyths objectAtIndex:indexPath.row];
    cell.textLabel.numberOfLines=2;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *selectedCellString = [self.sleepMyths objectAtIndex:indexPath.row];
    if ([selectedCellString isEqualToString:@"Co-Sleeping is Safe"])
    {
        [self performSegueWithIdentifier:@"cosleepSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Twelve Hours Sleep Equals Well-Rested"])
    {
        [self performSegueWithIdentifier:@"twelvehoursSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Some Newborns do not Need to Nap"])
    {
        [self performSegueWithIdentifier:@"needtonapSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"You can Get Your Newborn on a Schedule"])
    {
        [self performSegueWithIdentifier:@"scheduleSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Newborns Sleep Best in Bassinets"])
    {
        [self performSegueWithIdentifier:@"bassinetSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Rice Cereal Helps Babies Sleep Longer"])
    {
        [self performSegueWithIdentifier:@"ricecerealSegue" sender:self];
    }
}
@end

