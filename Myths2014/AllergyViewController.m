//
//  AllergyViewController.m
//  Myths2014
//
//  Created by Dan Weissbluth on 8/14/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "AllergyViewController.h"
#import "Eggs.h"
#import "Pets.h"

@interface AllergyViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *allergyTableView;
@property NSMutableArray* allergyMyths;
@end

@implementation AllergyViewController

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
    self.allergyMyths = [NSMutableArray arrayWithObjects:
                       @"Short Haired Pets are for Allergic Kids",
                       @"Avoid Eggs and Nuts Until Age 2",
                       nil];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.allergyMyths.count;
}


-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AllergyCell"];
    cell.textLabel.text = [self.allergyMyths objectAtIndex:indexPath.row];
    cell.textLabel.numberOfLines=2;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *selectedCellString = [self.allergyMyths objectAtIndex:indexPath.row];
    if ([selectedCellString isEqualToString:@"Short Haired Pets are for Allergic Kids"])
    {
        [self performSegueWithIdentifier:@"PetsSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Avoid Eggs and Nuts Until Age 2"])
    {
        [self performSegueWithIdentifier:@"EggsSegue" sender:self];
    }
}
@end


