//
//  DevelopmentViewController.m
//  Myths2014
//
//  Created by Dan Weissbluth on 8/14/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "DevelopmentViewController.h"
#import "EducationalMedia.h"
#import "Socializing.h"
#import "Walkers.h"
#import "NoRoll.h"
#import "NoTalk.h"

@interface DevelopmentViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *developmentTableView;


@property NSMutableArray *developmentMyths;
@end

@implementation DevelopmentViewController;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.developmentMyths = [NSMutableArray arrayWithObjects:
                       @"Educational Media Makes Infants Smart",
                       @"Socializing Before 2 Years of Age",
                       @"Walkers Help Toddlers Walk Sooner",
                       @"Something's Wrong-My Baby Does not Roll at 4 Months",
                       @"Something's Wrong-My Baby Does Not Talk at 12 Months",

                       nil];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.developmentMyths.count;
}


-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DevelopmentCell"];
    cell.textLabel.text = [self.developmentMyths objectAtIndex:indexPath.row];
    cell.textLabel.numberOfLines=2;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *selectedCellString = [self.developmentMyths objectAtIndex:indexPath.row];
    if ([selectedCellString isEqualToString:@"Educational Media Makes Infants Smart"])
    {
        [self performSegueWithIdentifier:@"educationalSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Socializing Before 2 Years of Age"])
    {
        [self performSegueWithIdentifier:@"socializingSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Walkers Help Toddlers Walk Sooner"])
    {
        [self performSegueWithIdentifier:@"walkersSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Something's Wrong-My Baby Does not Roll at 4 Months"])
    {
        [self performSegueWithIdentifier:@"norollSegue" sender:self];
    }
    else if ([selectedCellString isEqualToString:@"Something's Wrong-My Baby Does Not Talk at 12 Months"])
    {
        [self performSegueWithIdentifier:@"notalkSegue" sender:self];
    }

}
@end
