//
//  WalkViewController.m
//  Youmoer
//
//  Created by QUAN on 16/5/20.
//  Copyright © 2016年 QUAN. All rights reserved.
//

#import "WalkViewController.h"

@interface WalkViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *monitorImageView;
@property (weak, nonatomic) IBOutlet UIView *monitorView;
@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (weak, nonatomic) IBOutlet UILabel *label1;

@end

@implementation WalkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"监控/控制";

    self.monitorView.backgroundColor = RGBA(50, 163, 107, 1);
    
}

- (IBAction)clickMonitor:(UIButton *)sender {
    
    if (sender.selected) {
        sender.selected = NO;
        
        self.image1.hidden = NO;
        self.label1.hidden = NO;
        
        self.monitorImageView.hidden = YES;
        
    }else{
        
        sender.selected = YES;
        
        self.image1.hidden = YES;
        self.label1.hidden = YES;
        
        self.monitorImageView.hidden = NO;
    }
    
}

@end
