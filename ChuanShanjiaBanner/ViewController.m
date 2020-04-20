//
//  ViewController.m
//  ChuanShanjiaBanner
//
//  Created by CBurgess on 2020/4/17.
//  Copyright © 2020 cburgess. All rights reserved.
//

#import "ViewController.h"

#import <BUAdSDK/BUAdSDK.h>
#import <BUAdSDK/BUNativeExpressBannerView.h>

@interface ViewController ()<BUNativeExpressBannerViewDelegate>

@property (nonatomic, strong) BUNativeExpressBannerView *bannerView;

//@property (nonatomic, strong) BUNativeAd *nativeAd;
//@property (nonatomic, strong) BUNativeAdRelatedView *relatedView;
//@property (nonatomic, strong) UIImageView *buLogoIcon;
//
//
//@property (nonatomic, strong) UIButton *dislikeButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    [self refreshBanner];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.bannerView loadAdData];
    });
    
    
}


-  (void)refreshBanner {
    if (self.bannerView == nil) {
    CGFloat screenWidth = CGRectGetWidth([UIScreen mainScreen].bounds);
    CGFloat bannerHeigh = screenWidth/600*90;
        
    self.bannerView = [[BUNativeExpressBannerView alloc] initWithSlotID:@"945141304" rootViewController:self adSize:CGSizeMake(screenWidth, bannerHeigh) IsSupportDeepLink:YES interval:100];
        
    self.bannerView.frame = CGRectMake(0, 10, screenWidth, bannerHeigh);
        self.bannerView.backgroundColor = [UIColor orangeColor];
    self.bannerView.delegate = self;
    [self.view addSubview:self.bannerView];
    }
    [self.bannerView loadAdData];
}


- (void)nativeExpressBannerAdViewDidLoad:(BUNativeExpressBannerView *)bannerAdView
{
    
}

/**
This method is called when bannerAdView ad slot failed to load.
@param error : the reason of error
*/
- (void)nativeExpressBannerAdView:(BUNativeExpressBannerView *)bannerAdView didLoadFailWithError:(NSError *_Nullable)error
{
    
}

/**
This method is called when rendering a nativeExpressAdView successed.
*/
- (void)nativeExpressBannerAdViewRenderSuccess:(BUNativeExpressBannerView *)bannerAdView
{
    
}

/**
This method is called when a nativeExpressAdView failed to render.
@param error : the reason of error
*/
- (void)nativeExpressBannerAdViewRenderFail:(BUNativeExpressBannerView *)bannerAdView error:(NSError * __nullable)error
{
    
}

/**
This method is called when bannerAdView ad slot showed new ad.
*/
- (void)nativeExpressBannerAdViewWillBecomVisible:(BUNativeExpressBannerView *)bannerAdView
{
    
}

/**
This method is called when bannerAdView is clicked.
*/
- (void)nativeExpressBannerAdViewDidClick:(BUNativeExpressBannerView *)bannerAdView
{
    
}

/**
This method is called when the user clicked dislike button and chose dislike reasons.
@param filterwords : the array of reasons for dislike.
*/
- (void)nativeExpressBannerAdView:(BUNativeExpressBannerView *)bannerAdView dislikeWithReason:(NSArray<BUDislikeWords *> *_Nullable)filterwords
{
    
}




@end
