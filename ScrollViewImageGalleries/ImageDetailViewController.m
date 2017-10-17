//
//  ImageDetailViewController.m
//  ScrollViewImageGalleries
//
//  Created by Olga on 10/16/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

#import "ImageDetailViewController.h"

@interface ImageDetailViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *detailScrollView;
@property (weak, nonatomic) IBOutlet UIImageView *detailImageView;


@end

@implementation ImageDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.detailScrollView.delegate = self;
    self.detailImageView.image = self.image;
  
    
    
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    NSLog(@"viewForZoomingInScrollView");
    
    return self.detailImageView;
}

@end
