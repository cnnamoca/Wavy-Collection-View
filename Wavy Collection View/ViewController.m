//
//  ViewController.m
//  Wavy Collection View
//
//  Created by Carlo Namoca on 2017-10-19.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "ViewController.h"
#import "myCollectionViewCell.h"
#import "WavyFlowLayout.h"

@interface ViewController () <UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.collectionView.dataSource = self;
    
    WavyFlowLayout *wavy = [[WavyFlowLayout alloc]init];
    self.collectionView.collectionViewLayout = wavy;
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}


- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    myCollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    
    cell.label.text = [NSString stringWithFormat:@"cell %ld", (long)indexPath.row];
    
    return cell;
}


@end
