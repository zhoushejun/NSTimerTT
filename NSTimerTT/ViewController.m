//
//  ViewController.m
//  NSTimerTT
//
//  Created by shejun.zhou on 15/7/9.
//  Copyright (c) 2015年 shejun.zhou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSTimer *myTimer;
@property (weak, nonatomic) IBOutlet UILabel *labTime;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.labTime.text = @"开始运行";
    _myTimer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(loopPrintInfo:) userInfo:nil repeats:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loopPrintInfo:(id)info {
    static NSInteger n = 0;
    self.labTime.text = [NSString stringWithFormat:@"已运行:%ld s", ++n];
    NSLog(@"%ld", n);
}

@end
