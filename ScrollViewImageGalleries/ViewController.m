//
//  ViewController.m
//  ScrollViewImageGalleries
//
//  Created by Olga on 10/16/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

#import "ViewController.h"
#import "ImageDetailViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic) IBOutlet UIImageView *imageView1;
@property (nonatomic) IBOutlet UIImageView *imageView2;
@property (nonatomic) IBOutlet UIImageView *imageView3;
@property (nonatomic) UIImage *detailImage;
@property (strong, nonatomic) ViewController *viewController;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollView.delegate = self;
    [self setupPageControll];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIGestureRecognizer *)sender {
  //  if([segue.identifier isEqualToString:@"detailedView"]) {
//        UIGestureRecognizer *gestureRecognizer = (UIGestureRecognizer *) sender;
        UIImageView *tappedView = (UIImageView *) sender.view;
        ImageDetailViewController *controller = (ImageDetailViewController *)segue.destinationViewController;
        controller.image = tappedView.image;
}


-(IBAction)showImageDetailView: (UITapGestureRecognizer *) sender {
    
    [self performSegueWithIdentifier:@"detailedView" sender:sender];
}

-(void)setupPageControll {
    self.pageControl.pageIndicatorTintColor = [UIColor grayColor];
    self.pageControl.currentPageIndicatorTintColor = [UIColor darkGrayColor];
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    float fractionalPage = self.scrollView.contentOffset.x / self.view.frame.size.width;
    NSInteger page = lround(fractionalPage);
    self.pageControl.currentPage = page;
    
}


@end
