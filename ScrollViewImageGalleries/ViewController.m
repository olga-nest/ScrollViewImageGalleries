//
//  ViewController.m
//  ScrollViewImageGalleries
//
//  Created by Olga on 10/16/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic) IBOutlet UIImageView *imageView1;
@property (nonatomic) IBOutlet UIImageView *imageView2;
@property (nonatomic) IBOutlet UIImageView *imageView3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollView.delegate = self;
//    self.scrollView = [[UIScrollView alloc]initWithFrame:self.view.frame];
//    [self.view addSubview:self.scrollView];
//    self.scrollView.pagingEnabled = YES;
//    [self createImageViews];
//    [self setupLayout];
    
}

-(void)UIScrollViewDelegate {
    
}

@end
