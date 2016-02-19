//
//  DemoController.m
//  BlurryImage
//
//  Created by 小白 on 16/1/17.
//  Copyright (c) 2016年 小白. All rights reserved.
//

#import "DemoController.h"
#import "ANBlurredImageView.h"

@interface DemoController ()
@property (nonatomic,strong) ANBlurredImageView *viewer;
@end

@implementation DemoController

-(instancetype)init{
    if (self = [super init]) {
        ANBlurredImageView *view = [[ANBlurredImageView alloc] initWithBlurAmount:1 withTintColor:[UIColor colorWithWhite:0.11f alpha:0.5]];
        
       // [view setBaseImage:[UIImage imageNamed:@"nature"]];
        //view.baseImage = [UIImage imageNamed:@"nature"];
        [view setImage:[UIImage imageNamed:@"20141127022226989"]];
        view.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
        
        self.viewer = view;
        [self.view addSubview:view];
        
        
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.backgroundColor = [UIColor redColor];
        btn.frame = CGRectMake(100, 100, 20, 20);
        [btn addTarget:self action:@selector(aaa) forControlEvents:UIControlEventTouchDown];
        [self.view addSubview:btn];
        
        
        UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
        btn1.backgroundColor = [UIColor redColor];
        btn1.frame = CGRectMake(200, 100, 20, 20);
        [btn1 addTarget:self action:@selector(bbb) forControlEvents:UIControlEventTouchDown];
        [self.view addSubview:btn1];
        
        UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        btn2.backgroundColor = [UIColor redColor];
        btn2.frame = CGRectMake(100, 200, 20, 20);
        [btn2 addTarget:self action:@selector(ccc) forControlEvents:UIControlEventTouchDown];
        [self.view addSubview:btn2];
        
        UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
        btn3.backgroundColor = [UIColor redColor];
        btn3.frame = CGRectMake(200, 200, 20, 20);
        [btn3 addTarget:self action:@selector(ddd) forControlEvents:UIControlEventTouchDown];
        [self.view addSubview:btn3];
       
    }
    return self;
}

-(void)aaa
{
     [self.viewer blurredImageViewOutConfigDefault];
}



-(void)bbb
{
    NSLog(@"cccc");
    self.viewer.tintColor = [UIColor colorWithWhite:0.11f alpha:0.9];
    [self.viewer blurredImageViewDefault];
}

-(void)ccc{
    UIImage *image = [self.viewer blurredLastestImage];
    [self.viewer setImage:image];
}

-(void)ddd{
   self.viewer.tintColor = nil;
   [self.viewer blurredImageViewDefault];
}


@end
