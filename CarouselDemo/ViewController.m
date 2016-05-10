//
//  ViewController.m
//  CarouselDemo
//
//  Created by YueWen on 16/1/5.
//  Copyright © 2016年 YueWen. All rights reserved.
//

#import "ViewController.h"
#import "YWCarouseView.h"

@interface ViewController ()

@property (nonatomic, strong) YWCarouseView * carouse;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView * view1 = [[UIView alloc]init];
    UIView * view2 = [[UIView alloc]init];
    UIView * view3 = [[UIView alloc]init];
    UIView * view4 = [[UIView alloc]init];

    
    view1.backgroundColor = [UIColor blueColor];
    view2.backgroundColor = [UIColor redColor];
    view3.backgroundColor = [UIColor yellowColor];
    view4.backgroundColor = [UIColor greenColor];
    
    
    NSArray <UIView *> * views = @[view1,view2,view3,view4];
    
    _carouse = [[YWCarouseView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 200) withViews:views withPageControl:NO];
    
    [self.view addSubview:_carouse];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
