//
//  RemoteViewController.h
//  iRemote
//
//  Created by David Morton on 10/29/13.
//  Copyright (c) 2013 David Morton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RemoteViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) NSArray *buttons;

- (IBAction)addButtonClicked:(id)sender;
@end
