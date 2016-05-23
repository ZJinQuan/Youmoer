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
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *liineHeight;

@end

@implementation WalkViewController

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    self.liineHeight.constant = kScreenHeight / 3;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"监控/控制";

    self.monitorView.backgroundColor = RGBA(50, 163, 107, 1);
    self.navigationController.navigationBar.barStyle = UIBaselineAdjustmentNone;
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
