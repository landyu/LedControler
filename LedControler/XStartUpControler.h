//
//  XStartUpControler.h
//  LedControler
//
//  Created by landyu on 9/30/13.
//  Copyright (c) 2013 landyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Palette.h"

@interface XStartUpControler : UIViewController
{
    Palette *palette;
}

@property (retain, nonatomic) UIButton *doSearch;
@property (retain, nonatomic) UIButton *offLineMode;
@property (retain, nonatomic) UIActivityIndicatorView *activity;


@end
