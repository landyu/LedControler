//
//  XStartUpControler.m
//  LedControler
//
//  Created by landyu on 9/30/13.
//  Copyright (c) 2013 landyu. All rights reserved.
//

#import "XStartUpControler.h"
#import "XLightListController.h"

 
@implementation XStartUpControler

//@synthesize doSearch;

- (void)loadView
{
    UIView *startUpView = [[UIView alloc]init];
    startUpView.backgroundColor =  [UIColor colorWithHue:(85.0/255) saturation:90.0/255 brightness:(205.0/255) alpha:1];
    _doSearch = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _doSearch.frame = CGRectMake(40, 310, 240, 50);
    //button背景色
    _doSearch.backgroundColor = [UIColor grayColor];
    [_doSearch setTitle:@"Stop Search" forState:UIControlStateNormal];

    _offLineMode = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _offLineMode.frame = CGRectMake(40, 380, 240, 50);
    //button背景色
    _offLineMode.backgroundColor = [UIColor grayColor];
    [_offLineMode setTitle:@"Off Line Mode" forState:UIControlStateNormal];
    
    [_doSearch addTarget:self action:@selector(stopSearch:) forControlEvents:UIControlEventTouchUpInside];
    
    [_offLineMode addTarget:self action:@selector(offLineModeButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    _activity=[[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(145,165, 30, 30)];
    _activity.activityIndicatorViewStyle=UIActivityIndicatorViewStyleGray;
    _activity.tag=600;
    _activity.hidesWhenStopped=YES;
    [_activity startAnimating];            //菊花开始转动
    
    //加载完毕 停止菊花转动    if ([activity isAnimating]) {
    

    self.view = startUpView;
    [self.view addSubview:_doSearch];
    [self.view addSubview:_offLineMode];
    [self.view addSubview:_activity];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
//    palette = [[Palette alloc] initWithFrame:CGRectMake(40, 220, 240, 240)];
//    [self.view addSubview:palette];

}

- (void) stopSearch:(id)sender
{
    NSLog(@"Stop Search Button Cliked");
    UIButton* btn = (UIButton*)sender;
    NSString *title = [btn titleForState:UIControlStateNormal];
    
    if ([title isEqualToString:@"Stop Search" ])
    {
        [_activity stopAnimating];
        [_doSearch setTitle:@"Start Search" forState:UIControlStateNormal];
    }
    else if([title isEqualToString:@"Start Search"])
    {
        [_activity startAnimating];
        [_doSearch setTitle:@"Stop Search" forState:UIControlStateNormal];
    }
    

}

- (void) offLineModeButtonClicked:(id)sender
{
    NSLog(@"Off Line Button Cliked");
    
    XLightListController *lLVC = [[XLightListController alloc]init];
    [_activity stopAnimating];
    //[lLVC view];
    //lLVC.delegate = self;
    
    UINavigationController *navigation = [[UINavigationController alloc]initWithRootViewController:lLVC];
    
    
    //UIWindow* mainWindow = [[UIApplication sharedApplication].delegate window];
    
   [self presentViewController:navigation animated:YES completion: nil];
    
    //[mainWindow addSubview:navigation];
   // mainWindow.window.rootViewController = navigation;
    
}

@end
