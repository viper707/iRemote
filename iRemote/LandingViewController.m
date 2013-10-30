//
//  LandingViewController.m
//  iRemote
//
//  Created by David Morton on 10/29/13.
//  Copyright (c) 2013 David Morton. All rights reserved.
//

#import "LandingViewController.h"
#import "RemoteViewController.h"

@interface LandingViewController ()

@end

@implementation LandingViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)connectClicked:(id)sender {
    NSLog(@"Connect clicked");
    
    UINavigationController *parent = (UINavigationController*) self.parentViewController;
    UIViewController *remoteScreen = [[RemoteViewController alloc] init];
    
    [parent popViewControllerAnimated:NO];
    [parent pushViewController:remoteScreen animated:NO];
}

@end
