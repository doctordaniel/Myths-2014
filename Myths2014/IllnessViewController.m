//
//  IllnessViewController.m
//  Myths2014
//
//  Created by Dan Weissbluth on 8/14/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "IllnessViewController.h"
#import "GreenMucus.h"
#import "Teething.h"
#import "ColdMedicine.h"
#import "MilkMucus.h"


@interface IllnessViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *illnessTableView;
@property NSMutableArray *illnessMyths;
@end

@implementation IllnessViewController

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
    self.illnessMyths = [NSMutableArray arrayWithObjects:
                       @"Green Mucus Equals Infection",
                       @"Teething Causes Fever",
                       @"Milk Creates Mucus",
                       @"Cough and Cold Medicines are Safe",
                       nil];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.illnessMyths.count;
}


-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"IllnessCell"];
    cell.textLabel.text = [self.illnessMyths objectAtIndex:indexPath.row];
    cell.textLabel.numberOfLines=2;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *selectedCellString = [self.illnessMyths objectAtIndex:indexPath.row];
    if ([selectedCellString isEqualToString:@"Green Mucus Equals Infection"])
    {
        [self performSegueWithIdentifier:@"greenSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Teething Causes Fever"])
    {
        [self performSegueWithIdentifier:@"teethingSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString: @"Milk Creates Mucus"])
    {
        [self performSegueWithIdentifier:@"milkmucusSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Cough and Cold Medicines are Safe"])
    {
        [self performSegueWithIdentifier:@"coldmedicineSegue" sender:self];
    }
    
}
@end

