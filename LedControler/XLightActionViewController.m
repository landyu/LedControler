//
//  XLightActionViewController.m
//  LedControler
//
//  Created by landyu on 10/6/13.
//  Copyright (c) 2013 landyu. All rights reserved.
//

#import "XLightActionViewController.h"

@interface XLightActionViewController ()

@end

@implementation XLightActionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = [NSString stringWithFormat:@"Light 1"];
    }
    return self;
}

- (void)loadView
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
    CGRect applicationFrame = [[UIScreen mainScreen] applicationFrame];
    UIView *contentView = [[UIView alloc] initWithFrame:applicationFrame];
    contentView.backgroundColor = [UIColor blackColor];
    
    _onOrOff = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_onOrOff setTitle:@"ON" forState:UIControlStateNormal];
    _onOrOff.backgroundColor = [UIColor orangeColor];
    [_onOrOff setFrame:CGRectMake(90, 100, 140, 35)];
    [_onOrOff addTarget:self action:@selector(turnOnOrOff:) forControlEvents:UIControlEventTouchUpInside];
    
    self.view = contentView;
    [self.view addSubview:_onOrOff];
    //[super loadView];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) turnOnOrOff:(id)sender
{
    UIButton* btn = (UIButton*)sender;
    NSString *title = [btn titleForState:UIControlStateNormal];
    
    if ([title isEqualToString:@"ON" ])
    {
        [_onOrOff setTitle:@"OFF" forState:UIControlStateNormal];
        _onOrOff.backgroundColor = [UIColor grayColor];
    }
    else if([title isEqualToString:@"OFF"])
    {
        [_onOrOff setTitle:@"ON" forState:UIControlStateNormal];
        _onOrOff.backgroundColor = [UIColor orangeColor];
    }

}

@end
