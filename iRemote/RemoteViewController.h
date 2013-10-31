//
//  RemoteViewController.h
//  iRemote
//
//  Created by David Morton on 10/29/13.
//  Copyright (c) 2013 David Morton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RemoteViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) NSArray *buttons;

@end
