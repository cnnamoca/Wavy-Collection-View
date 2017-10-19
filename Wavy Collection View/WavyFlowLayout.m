//
//  WavyFlowLayout.m
//  Wavy Collection View
//
//  Created by Carlo Namoca on 2017-10-19.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "WavyFlowLayout.h"

@implementation WavyFlowLayout

- (void)prepareLayout {
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
    // Set minimum interitem spacing to be huge to force all items to be on their own line
    self.minimumInteritemSpacing = CGFLOAT_MAX;
    
}

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSArray<UICollectionViewLayoutAttributes *> *superAttrs = [super layoutAttributesForElementsInRect:rect];
    
    // Need to copy attrs from super to avoid cached frame mismatch
//    NSMutableArray<UICollectionViewLayoutAttributes *> *newAttrs = [[NSMutableArray alloc] init];
    
    // TODO: fill me in!
    //make a rect based on the collection view size to use as bounds
//    CGRect myRect;
//    myRect.origin = self.collectionView.contentOffset;
//    myRect.size = self.collectionView.bounds.size;
//    CGFloat myRectCenter = myRect.size.width/2;
    
    for (UICollectionViewLayoutAttributes *attributes in superAttrs) {
    // the one liner to rule them all
        attributes.frame = CGRectMake(attributes.frame.origin.x, arc4random_uniform(600), self.itemSize.width, arc4random_uniform(800));
        
//        if (CGRectIntersectsRect(attributes.frame, rect))
//        {
//            CGFloat distanceFromCenter = myRectCenter - attributes.center.x;
//            CGFloat waveDistance = distanceFromCenter / 50.0;
//            CGRect rect = attributes.frame;
//            rect.origin.y = sinf(waveDistance) * 100.0 + 150.0;
            //makes a random wave all the time!!! SO TRIPPY
//            rect.origin.y = CGFLOAT_MIN + arc4random_uniform(self.collectionView.frame.size.width);
//            attributes.frame = rect;
//        }
    }

    
    return superAttrs;
}
@end
