//
//  RemoteViewController.m
//  iRemote
//
//  Created by David Morton on 10/29/13.
//  Copyright (c) 2013 David Morton. All rights reserved.
//

#import "RemoteViewController.h"
#import "AddButtonModel.h"

@interface RemoteViewController ()

@end

@implementation RemoteViewController


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
    
    self.buttons = [NSArray arrayWithObject:[[AddButtonModel alloc] init]];
    
    
    UINib *addButtonNib = [UINib nibWithNibName:@"AddButtonView" bundle:nil];
    
    [self.collectionView registerNib:addButtonNib forCellWithReuseIdentifier:@"AddButton"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.buttons.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{    NSObject *data = [self.buttons objectAtIndex:indexPath.row];
    
    UICollectionViewCell *cell;
    
    if([data isKindOfClass:[AddButtonModel class]]) {
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"AddButton" forIndexPath:indexPath];
        
    }
    else if([data isKindOfClass:[AddButtonModel class]]) {
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"iRButton" forIndexPath:indexPath];
        NSLog(@"Adding another button");
    }
    else {
        NSLog(@"I don't knwo what's in this array");
    }
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
        
    NSObject *data = [self.buttons objectAtIndex:indexPath.row];
    
    if([data isKindOfClass:[AddButtonModel class]]) {
        NSLog(@"Add clicked");
    }
    else if([data isKindOfClass:[AddButtonModel class]]) {
        NSLog(@"IR Button clicked");
    }
    else {
        NSLog(@"Clicked something strange");
    }
}


@end
