//
//  ViewController.m
//  NSTimerTT
//
//  Created by shejun.zhou on 15/7/9.
//  Copyright (c) 2015年 shejun.zhou. All rights reserved.
//

#import "ViewController.h"

NSString *str = @"已运行：";

@interface ViewController ()

@property (nonatomic, strong) NSTimer *myTimer;
@property (weak, nonatomic) IBOutlet UILabel *labTime;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.labTime.text = [NSString stringWithFormat:@"%@0 s", str];
    _myTimer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(loopPrintInfo:) userInfo:nil repeats:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loopPrintInfo:(id)info {
    static NSInteger n = 0;
    NSLog(@"%ld", ++n);
    self.labTime.text = [NSString stringWithFormat:@"%@ %ld s", str, n];
}

@end
