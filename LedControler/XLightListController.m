//
//  XLightListController.m
//  LedControler
//
//  Created by landyu on 10/2/13.
//  Copyright (c) 2013 landyu. All rights reserved.
//

#import "XLightListController.h"
#import "XLightActionViewController.h"

@interface XLightListController ()

@end

@implementation XLightListController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = [NSString stringWithFormat:@"Light List"];
    }
    
    return self;
}

- (void)loadView
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
    CGRect applicationFrame = [[UIScreen mainScreen] applicationFrame];
    UIView *contentView = [[UIView alloc] initWithFrame:applicationFrame];
    contentView.backgroundColor = [UIColor blackColor];
    
    UIButton * light1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [light1 setTitle:@"Light1" forState:UIControlStateNormal];
    light1.backgroundColor = [UIColor grayColor];
    [light1 setFrame:CGRectMake(90, 100, 140, 35)];
    [light1 addTarget:self action:@selector(selectLight:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem * refresh = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(refreshLightNum)];
    
    self.navigationItem.leftBarButtonItem = refresh;
    self.view = contentView;
    [self.view addSubview:light1];
    //[super loadView];
  
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%@", NSStringFromSelector(_cmd));
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)selectLight:(id)sender
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
    UIButton* btn = (UIButton*)sender;
    NSString *title = [btn titleForState:UIControlStateNormal];
    
    if ([title isEqualToString:@"Light1" ])
    {
        XLightActionViewController *light1VC = [[XLightActionViewController alloc] init];
        
        [self.navigationController pushViewController:light1VC animated:YES];
    }
}

- (void)refreshLightNum
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

@end
